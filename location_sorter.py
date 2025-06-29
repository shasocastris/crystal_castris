#!/usr/bin/env python3
"""
Script to sort trainer segments by location from trainer_segments.txt
"""

import sys
import re
from collections import defaultdict


def parse_trainer_segments(filename):
    """Parse trainer segments and group them by location."""

    try:
        with open(filename, 'r') as file:
            content = file.read()
    except FileNotFoundError:
        print(f"Error: File '{filename}' not found.")
        return None

    # Dictionary to store segments by location
    locations = defaultdict(list)

    # Split content into lines
    lines = content.split('\n')

    current_segment = []
    current_location = None

    for line in lines:
        line = line.strip()

        # Skip empty lines and header comments
        if not line or line.startswith('# Extracted') or line.startswith('# Format') or line.startswith('# Generated'):
            continue

        # Check if this is a location/trainer header line
        if line.startswith('#'):
            # If we have a previous segment, save it
            if current_location and current_segment:
                segment_text = '\n'.join(current_segment)
                locations[current_location].append(segment_text)

            # Extract location from the header
            # Format: # Location: TRAINER_TYPE TRAINER_NAME
            header_match = re.match(r'#\s*([^:]+):', line)
            if header_match:
                current_location = header_match.group(1).strip()
                current_segment = [line]  # Start new segment with header
            else:
                current_location = None
                current_segment = []

        # This is a Pokemon data line
        elif line and current_location:
            current_segment.append(line)

    # Don't forget the last segment
    if current_location and current_segment:
        segment_text = '\n'.join(current_segment)
        locations[current_location].append(segment_text)

    return locations


def sort_and_write_segments(locations, output_file):
    """Sort locations alphabetically and write to output file."""

    try:
        with open(output_file, 'w') as f:
            f.write("# Trainer Segments Sorted by Location\n")
            f.write("# Format: (pokemon_name, level)\n")
            f.write("# Generated from trainer_segments.txt\n\n")

            # Sort locations alphabetically
            sorted_locations = sorted(locations.keys())

            for location in sorted_locations:
                f.write(f"# ============ {location.upper()} ============\n\n")

                # Write all segments for this location
                for segment in locations[location]:
                    f.write(segment + "\n\n")

                f.write("\n")  # Extra spacing between locations

        return True

    except IOError as e:
        print(f"Error writing to file '{output_file}': {e}")
        return False


def main():
    if len(sys.argv) < 2 or len(sys.argv) > 3:
        print("Usage: python location_sorter.py <trainer_segments.txt> [output_file]")
        print("  If no output file is specified, 'trainers_by_location.txt' will be used")
        sys.exit(1)

    input_file = sys.argv[1]
    output_file = sys.argv[2] if len(sys.argv) == 3 else "trainers_by_location.txt"

    # Parse the trainer segments
    locations = parse_trainer_segments(input_file)

    if locations is None:
        sys.exit(1)

    if not locations:
        print("No trainer segments found in the input file.")
        sys.exit(1)

    # Sort and write to output file
    if sort_and_write_segments(locations, output_file):
        total_segments = sum(len(segments) for segments in locations.values())
        print(f"Successfully sorted {total_segments} trainer segments from {len(locations)} locations.")
        print(f"Output written to '{output_file}'")

        # Show location summary
        print(f"\nLocations found ({len(locations)}):")
        for location in sorted(locations.keys()):
            print(f"  {location}: {len(locations[location])} trainers")
    else:
        sys.exit(1)


if __name__ == "__main__":
    main()