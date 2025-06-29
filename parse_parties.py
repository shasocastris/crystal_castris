#!/usr/bin/env python3
"""
Script to parse parties.asm file and extract trainer data in gym segment format.
"""

import re
import sys


def parse_parties_file(filename):
    """Parse the parties.asm file and extract trainer blocks."""

    try:
        with open(filename, 'r') as file:
            content = file.read()
    except FileNotFoundError:
        print(f"Error: File '{filename}' not found.")
        return

    # Regular expression to match trainer blocks
    # Matches from "next_list_item" to "db -1 ; end"
    trainer_pattern = r'next_list_item\s*;([^,]+),([^\n]+)\n(.*?)db\s+-1\s*;\s*end'

    matches = re.findall(trainer_pattern, content, re.DOTALL)

    segments = []

    for match in matches:
        trainer_type = match[0].strip()
        location = match[1].strip()
        block_content = match[2]

        # Extract trainer name
        name_match = re.search(r'db\s+"([^@]+)@"', block_content)
        trainer_name = name_match.group(1) if name_match else "UNKNOWN"

        # Extract Pokemon data
        pokemon_list = []

        # Find all Pokemon entries (db level, dw pokemon_name)
        pokemon_pattern = r'db\s+(\d+)\s+dw\s+([A-Z_]+)'
        pokemon_matches = re.findall(pokemon_pattern, block_content)

        for level, pokemon_name in pokemon_matches:
            # Convert Pokemon name to lowercase and handle underscores
            pokemon_formatted = pokemon_name.lower().replace('_', '')
            pokemon_list.append((pokemon_formatted, int(level)))

        if pokemon_list:
            # Sort by level for consistency
            pokemon_list.sort(key=lambda x: x[1])

            # Format the segment
            pokemon_tuples = ", ".join([f"('{pokemon}', {level})" for pokemon, level in pokemon_list])
            segment = f"# {location}: {trainer_type} {trainer_name}\n{pokemon_tuples},"

            segments.append(segment)

    return segments


def main():
    if len(sys.argv) < 2 or len(sys.argv) > 3:
        print("Usage: python parties_parser.py <parties.asm> [output_file]")
        print("  If no output file is specified, 'trainer_segments.txt' will be used")
        sys.exit(1)

    filename = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) == 3 else "trainer_segments.txt"

    segments = parse_parties_file(filename)

    if segments:
        try:
            with open(output_file, 'w') as f:
                f.write("# Extracted Trainer Segments\n")
                f.write("# Format: (pokemon_name, level)\n")
                f.write("# Generated from parties.asm\n\n")

                for segment in segments:
                    f.write(segment + "\n\n")

            print(f"Successfully extracted {len(segments)} trainer segments to '{output_file}'")

        except IOError as e:
            print(f"Error writing to file '{output_file}': {e}")
            sys.exit(1)
    else:
        print("No trainer blocks found or file could not be parsed.")


if __name__ == "__main__":
    main()