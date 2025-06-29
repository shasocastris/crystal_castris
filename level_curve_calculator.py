"""
Pokemon Crystal Level Curve Calculator with File Output

This script calculates optimal gym leader levels based on trainer EXP sources
and saves the detailed analysis to output files.

Usage:
    python crystal_level_curve_calculator_with_file_output.py

Output Files:
    - level_curve_analysis_team_{team_size}.txt: Detailed analysis for each team size
    - level_curve_summary.txt: Summary comparison across all team sizes
    - level_curve_data.csv: Raw data in CSV format for further analysis

Requirements:
    - gym_segments.py file (contains the gym_segments dictionary)
    - pokemon_base_exp.csv file (Pokemon base experience data)
"""

import csv
import os
from datetime import datetime

from gym_segnments import gym_segments


class CrystalLevelCurveCalculator:
    def __init__(self, pokemon_csv_file='pokemon_base_exp.csv', team_size=6, output_dir='level_curve_output'):
        self.pokemon_base_exp = {}
        self.gym_segments = {}
        self.team_size = team_size
        self.output_dir = output_dir

        # Create output directory if it doesn't exist
        os.makedirs(output_dir, exist_ok=True)

        # Load data from external files
        self.load_gym_segments()
        self.load_pokemon_base_exp(pokemon_csv_file)

    def load_gym_segments(self):
        """Load gym segments dictionary from imported module."""
        if gym_segments is not None:
            self.gym_segments = gym_segments
            print(f"Using imported gym segments: {len(self.gym_segments)} segments loaded")
        else:
            print("Using fallback gym segments data")
            self.load_fallback_gym_segments()

    def load_fallback_gym_segments(self):
        """Fallback gym segments if file can't be loaded."""
        self.gym_segments = {
            'start_to_falkner': [
                ('rattata', 5), ('pidgey', 3), ('sentret', 5), ('ledyba', 4), ('spinarak', 4),
                ('caterpie', 3), ('caterpie', 3), ('weedle', 4), ('caterpie', 3),
                ('bellsprout', 4), ('gastly', 4), ('hoothoot', 4)
            ],
            'falkner_to_bugsy': [
                ('caterpie', 3), ('caterpie', 3), ('weedle', 4), ('caterpie', 3),
                ('rattata', 8), ('zubat', 10), ('mareep', 10)
            ],
            'bugsy_to_whitney': [
                ('ledyba', 10), ('paras', 12), ('oddish', 11), ('bellsprout', 11),
                ('rattata', 9), ('sandshrew', 12), ('spearow', 10)
            ],
            'whitney_to_morty': [
                ('venonat', 18), ('pikachu', 20), ('vulpix', 18), ('diglett', 12),
                ('zubat', 12), ('sandshrew', 16), ('marill', 18)
            ],
            'morty_to_chuck': [
                ('wooper', 16), ('quagsire', 20), ('flaaffy', 16), ('psyduck', 18),
                ('mr_mime', 18), ('magnemite', 19), ('slowpoke', 25), ('krabby', 17),
                ('kingler', 25), ('pikachu', 20)
            ],
            'chuck_to_jasmine': [
                ('eevee', 33), ('flareon', 33), ('vaporeon', 33), ('jolteon', 33)
            ],
            'jasmine_to_pryce': [
                ('qwilfish', 21), ('pikachu', 21), ('sandshrew', 21), ('clefairy', 24)
            ],
            'pryce_to_clair': [
                ('goldeen', 22), ('kadabra', 26), ('rhyhorn', 27), ('charmeleon', 33)
            ],
            'clair_to_elite_four': [
                ('starmie', 36), ('alakazam', 47), ('machamp', 34)
            ]
        }

    def load_pokemon_base_exp(self, csv_file):
        """Load Pokemon base experience values from CSV file."""
        try:
            with open(csv_file, 'r', encoding='utf-8') as file:
                csv_reader = csv.reader(file)

                # Skip the first two header rows
                next(csv_reader)
                next(csv_reader)

                for row in csv_reader:
                    if len(row) >= 2:  # Ensure we have at least name and base_exp columns
                        pokemon_name = row[0].strip().lower()
                        try:
                            base_exp = int(row[1].strip())
                            self.pokemon_base_exp[pokemon_name] = base_exp
                        except (ValueError, IndexError):
                            # Skip rows with invalid data
                            continue

            print(f"Successfully loaded base experience for {len(self.pokemon_base_exp)} Pokemon from {csv_file}")

        except FileNotFoundError:
            print(f"Warning: Could not find {csv_file}. Using fallback base experience data.")
            self.load_fallback_base_exp()
        except Exception as e:
            print(f"Error loading Pokemon base experience: {e}. Using fallback data.")
            self.load_fallback_base_exp()

    def load_fallback_base_exp(self):
        """Fallback base experience data if CSV can't be loaded."""
        self.pokemon_base_exp = {
            'rattata': 57, 'raticate': 116, 'pidgey': 55, 'pidgeotto': 113, 'pidgeot': 172,
            'spearow': 58, 'fearow': 162, 'zubat': 54, 'golbat': 171, 'crobat': 204,
            'geodude': 73, 'graveler': 134, 'golem': 177, 'machop': 88, 'machoke': 146,
            'machamp': 193, 'tentacool': 105, 'tentacruel': 205, 'magikarp': 20,
            'gyarados': 214, 'poliwag': 77, 'poliwhirl': 131, 'poliwrath': 185,
            'bellsprout': 84, 'weepinbell': 151, 'victreebel': 191, 'gastly': 95,
            'haunter': 126, 'gengar': 190, 'onix': 108, 'steelix': 196,
            'hitmonlee': 139, 'hitmonchan': 140, 'hitmontop': 138, 'primeape': 149,
            'tyrogue': 91, 'mankey': 94, 'psyduck': 80, 'golduck': 174,
            'staryu': 106, 'starmie': 207, 'magnemite': 89, 'magneton': 161,
            'electrode': 150, 'voltorb': 103, 'chinchou': 90, 'lanturn': 156,
            'krabby': 115, 'kingler': 206, 'horsea': 83, 'seadra': 154,
            'kingdra': 207, 'slowpoke': 99, 'slowbro': 164, 'slowking': 164,
            'seel': 100, 'dewgong': 176, 'shellder': 97, 'cloyster': 203,
            'drowzee': 102, 'hypno': 165, 'abra': 73, 'kadabra': 145, 'alakazam': 186,
            'natu': 73, 'xatu': 171, 'hoothoot': 58, 'noctowl': 162,
            'ledyba': 54, 'ledian': 134, 'spinarak': 54, 'ariados': 134,
            'wooper': 78, 'quagsire': 137, 'flaaffy': 117, 'ampharos': 194,
            'houndour': 114, 'houndoom': 204, 'skarmory': 168, 'forretress': 118,
            'scizor': 200, 'dragonair': 144, 'dragonite': 218, 'lapras': 219,
            'snorlax': 154, 'ditto': 61, 'eevee': 92, 'vaporeon': 196,
            'jolteon': 197, 'flareon': 198, 'espeon': 197, 'umbreon': 197,
            'caterpie': 53, 'metapod': 72, 'butterfree': 160, 'weedle': 52,
            'kakuna': 71, 'beedrill': 159, 'sentret': 57, 'furret': 116,
            'mr_mime': 136, 'clefairy': 68, 'clefable': 129, 'paras': 70,
            'parasect': 128, 'oddish': 78, 'gloom': 132, 'vileplume': 184,
            'mareep': 59, 'sandshrew': 93, 'sandslash': 163, 'diglett': 81,
            'dugtrio': 153, 'vulpix': 63, 'ninetales': 178, 'pikachu': 82,
            'raichu': 122, 'marill': 58, 'azumarill': 153, 'venonat': 102,
            'venomoth': 165, 'qwilfish': 100, 'goldeen': 111, 'seaking': 158,
            'rhyhorn': 135, 'rhydon': 204, 'charmeleon': 142, 'charizard': 209
        }

    def exp_needed_for_level(self, level):
        """Calculate total EXP needed to reach a given level (Medium Fast group)."""
        return level ** 3

    def exp_for_team_level(self, level):
        """Calculate total EXP needed for entire team to reach level."""
        return self.exp_needed_for_level(level) * self.team_size

    def exp_from_trainer_pokemon(self, pokemon_name, pokemon_level):
        """Calculate EXP gained from defeating a trainer's Pokemon."""
        base_exp = self.pokemon_base_exp.get(pokemon_name.lower(), 100)  # Default 100 if unknown
        trainer_multiplier = 1.5
        return int((base_exp * pokemon_level / 7) * trainer_multiplier)

    def calculate_trainer_progression_exp(self):
        """Calculate EXP available between major progression points using loaded gym segments."""
        exp_by_segment = {}
        detailed_info = {}

        for segment, trainers in self.gym_segments.items():
            total_exp = 0
            pokemon_count = 0
            pokemon_details = []

            for pokemon_name, level in trainers:
                exp_gained = self.exp_from_trainer_pokemon(pokemon_name, level)
                total_exp += exp_gained
                pokemon_count += 1
                pokemon_details.append((pokemon_name, level, exp_gained))

            exp_by_segment[segment] = total_exp
            detailed_info[segment] = {
                'total_exp': total_exp,
                'pokemon_count': pokemon_count,
                'avg_exp': total_exp / pokemon_count if pokemon_count > 0 else 0,
                'equivalent_levels': (total_exp / self.team_size) ** (1 / 3) if total_exp > 0 else 0,
                'pokemon_details': pokemon_details
            }

        return exp_by_segment, detailed_info

    def calculate_optimal_gym_levels(self, trainer_exp):
        """Calculate mathematically optimal gym leader levels based on trainer EXP only."""
        # Starting assumptions
        team_level_after_rival = 5
        current_team_exp = self.exp_for_team_level(team_level_after_rival)

        results = []

        # Map gym segments to gym leaders
        gym_progression = [
            ('Falkner', 'start_to_falkner'),
            ('Bugsy', 'falkner_to_bugsy'),
            ('Whitney', 'bugsy_to_whitney'),
            ('Morty', 'whitney_to_morty'),
            ('Chuck', 'morty_to_chuck'),
            ('Jasmine', 'chuck_to_jasmine'),
            ('Pryce', 'jasmine_to_pryce'),
            ('Clair', 'pryce_to_clair')
        ]

        for i, (gym_leader, segment) in enumerate(gym_progression):
            if segment in trainer_exp:
                available_trainer_exp = trainer_exp[segment]

                # Calculate what level this EXP supports for the team
                future_team_exp = current_team_exp + available_trainer_exp
                future_team_level = round((future_team_exp / self.team_size) ** (1 / 3))

                # Gym should be slightly below what the next segment supports
                if i <= 2:  # Early game - larger gaps acceptable
                    gym_level = max(future_team_level - 3, round((current_team_exp / self.team_size) ** (1 / 3)) + 1)
                else:  # Late game - smaller gaps due to cubic scaling
                    gym_level = max(future_team_level - 2, round((current_team_exp / self.team_size) ** (1 / 3)) + 1)

                gym_level = round(gym_level)
                results.append((gym_leader, gym_level, available_trainer_exp))
                current_team_exp = self.exp_for_team_level(gym_level)
            else:
                # If segment not found, estimate based on progression
                final_level = round((current_team_exp / self.team_size) ** (1 / 3)) + 2
                results.append((gym_leader, final_level, 0))

        return results

    def write_to_file(self, filename, content):
        """Write content to a file in the output directory."""
        filepath = os.path.join(self.output_dir, filename)
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Output saved to: {filepath}")

    def generate_level_curve_report(self):
        """Generate comprehensive level curve analysis and save to files."""
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        # Collect all output in strings
        console_output = []
        csv_data = []

        def log(text=""):
            """Helper function to log to both console and file output."""
            print(text)
            console_output.append(text)

        log("=== POKEMON CRYSTAL TRAINER-ONLY LEVEL CURVE ANALYSIS ===")
        log("")
        log(f"Analysis generated: {timestamp}")
        log(f"Loaded {len(self.pokemon_base_exp)} Pokemon base experience values")
        log(f"Loaded {len(self.gym_segments)} gym segments")
        log(f"Team size: {self.team_size} Pokemon")
        log("")

        # Calculate trainer EXP distribution
        log("Calculating EXP from trainer segments...")
        trainer_exp, detailed_info = self.calculate_trainer_progression_exp()

        log("")
        log("EXP Available from Trainers by Segment:")
        total_trainer_exp = 0
        for segment, exp in trainer_exp.items():
            equivalent_levels = (exp / self.team_size) ** (1 / 3)
            total_trainer_exp += exp
            log(f"  {segment}: {exp:,} EXP (≈{equivalent_levels:.1f} levels for team of {self.team_size})")

            # Add to CSV data
            csv_data.append({
                'team_size': self.team_size,
                'segment': segment,
                'trainer_exp': exp,
                'pokemon_count': detailed_info[segment]['pokemon_count'],
                'avg_exp_per_pokemon': detailed_info[segment]['avg_exp'],
                'equivalent_team_levels': equivalent_levels
            })

        log("")
        log(f"Total Trainer EXP Available: {total_trainer_exp:,}")
        total_team_levels = (total_trainer_exp / self.team_size) ** (1 / 3)
        log(f"Total EXP supports team reaching level {total_team_levels:.1f}")

        # Find the segment with most EXP
        max_exp_segment = max(trainer_exp.items(), key=lambda x: x[1])
        log(f"*** HIGHEST EXP SEGMENT: '{max_exp_segment[0]}' with {max_exp_segment[1]:,} EXP ***")

        # Calculate optimal gym levels
        optimal_levels = self.calculate_optimal_gym_levels(trainer_exp)
        log("")
        log("MATHEMATICALLY OPTIMAL GYM LEADER LEVELS:")
        log(f"(Based on trainer EXP sources, cubic scaling, and team size of {self.team_size})")
        log("-" * 60)

        gym_csv_data = []
        for gym, level, trainer_exp_next in optimal_levels:
            if trainer_exp_next > 0:
                log(f"{gym:8}: Level {level:2} (Segment provides {trainer_exp_next:>6,.0f} EXP)")
            else:
                log(f"{gym:8}: Level {level:2} (Final gym)")

            gym_csv_data.append({
                'team_size': self.team_size,
                'gym_leader': gym,
                'optimal_level': level,
                'segment_exp': trainer_exp_next
            })

        log("")
        log("=== COMPARISON WITH CURRENT LEVELS ===")
        current_levels = {
            'Falkner': 13, 'Bugsy': 20, 'Whitney': 24, 'Morty': 30,
            'Chuck': 38, 'Jasmine': 42, 'Pryce': 45, 'Clair': 48
        }

        comparison_csv_data = []
        for gym, optimal_level, _ in optimal_levels:
            current = current_levels.get(gym, 0)
            difference = current - optimal_level
            status = "✓ Good" if abs(difference) <= 2 else "⚠ Adjust" if abs(difference) <= 5 else "❌ Fix"
            log(f"{gym:8}: Current L{current:2} → Optimal L{optimal_level:2} ({difference:+3}) {status}")

            comparison_csv_data.append({
                'team_size': self.team_size,
                'gym_leader': gym,
                'current_level': current,
                'optimal_level': optimal_level,
                'difference': difference,
                'status': status.split()[1] if len(status.split()) > 1 else status
            })

        log("")
        log(f"=== KEY INSIGHTS (TRAINER EXP ONLY, TEAM SIZE {self.team_size}) ===")
        log("1. Analysis based purely on mandatory trainer battles")
        log("2. Wild Pokemon grinding can supplement but isn't required")
        log("3. Cubic EXP scaling creates natural level gaps in late game")
        log("4. Each segment provides specific EXP budget for gym difficulty")
        log("5. Smaller teams level faster - consider team size impact on difficulty")

        # Detailed breakdown
        log("")
        log("=== DETAILED TRAINER BREAKDOWN BY SEGMENT ===")
        for segment, info in detailed_info.items():
            log(f"\n{segment.upper()}:")
            log(f"  Total EXP: {info['total_exp']:,}")
            log(f"  Pokemon Count: {info['pokemon_count']}")
            log(f"  Average EXP per Pokemon: {info['avg_exp']:.0f}")
            log(f"  Equivalent Team Levels: {info['equivalent_levels']:.1f}")
            log("  Pokemon Details:")
            for pokemon_name, level, exp_gained in info['pokemon_details']:
                log(f"    {pokemon_name.title()} L{level}: {exp_gained} EXP")

        # Save main analysis file
        output_content = "\n".join(console_output)
        self.write_to_file(f"level_curve_analysis_team_{self.team_size}.txt", output_content)

        # Save CSV data
        if csv_data:
            csv_filename = f"level_curve_segments_team_{self.team_size}.csv"
            csv_filepath = os.path.join(self.output_dir, csv_filename)
            with open(csv_filepath, 'w', newline='', encoding='utf-8') as csvfile:
                fieldnames = ['team_size', 'segment', 'trainer_exp', 'pokemon_count', 'avg_exp_per_pokemon',
                              'equivalent_team_levels']
                writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
                writer.writeheader()
                writer.writerows(csv_data)
            print(f"Segment data saved to: {csv_filepath}")

        if gym_csv_data:
            gym_csv_filename = f"optimal_gym_levels_team_{self.team_size}.csv"
            gym_csv_filepath = os.path.join(self.output_dir, gym_csv_filename)
            with open(gym_csv_filepath, 'w', newline='', encoding='utf-8') as csvfile:
                fieldnames = ['team_size', 'gym_leader', 'optimal_level', 'segment_exp']
                writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
                writer.writeheader()
                writer.writerows(gym_csv_data)
            print(f"Gym level data saved to: {gym_csv_filepath}")

        if comparison_csv_data:
            comp_csv_filename = f"level_comparison_team_{self.team_size}.csv"
            comp_csv_filepath = os.path.join(self.output_dir, comp_csv_filename)
            with open(comp_csv_filepath, 'w', newline='', encoding='utf-8') as csvfile:
                fieldnames = ['team_size', 'gym_leader', 'current_level', 'optimal_level', 'difference', 'status']
                writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
                writer.writeheader()
                writer.writerows(comparison_csv_data)
            print(f"Comparison data saved to: {comp_csv_filepath}")

        return optimal_levels, detailed_info


def generate_summary_report(team_sizes, output_dir):
    """Generate a summary report comparing all team sizes."""
    timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

    summary_content = []
    summary_content.append("=== POKEMON CRYSTAL LEVEL CURVE SUMMARY REPORT ===")
    summary_content.append(f"Generated: {timestamp}")
    summary_content.append("")
    summary_content.append("This report compares optimal gym levels across different team sizes")
    summary_content.append("based on trainer EXP availability in Pokemon Crystal.")
    summary_content.append("")

    # Collect data for all team sizes
    all_results = {}

    for team_size in team_sizes:
        calculator = CrystalLevelCurveCalculator(team_size=team_size, output_dir=output_dir)
        trainer_exp, _ = calculator.calculate_trainer_progression_exp()
        optimal_levels = calculator.calculate_optimal_gym_levels(trainer_exp)

        all_results[team_size] = {
            'optimal_levels': optimal_levels,
            'total_trainer_exp': sum(trainer_exp.values()),
            'max_team_level': (sum(trainer_exp.values()) / team_size) ** (1 / 3)
        }

    # Current levels for comparison
    current_levels = {
        'Falkner': 13, 'Bugsy': 20, 'Whitney': 24, 'Morty': 30,
        'Chuck': 38, 'Jasmine': 42, 'Pryce': 45, 'Clair': 48
    }

    # Create comparison table
    summary_content.append("=== OPTIMAL LEVELS BY TEAM SIZE ===")
    summary_content.append("Gym Leader | Current | Team=1 | Team=3 | Team=6 | Difference from Current")
    summary_content.append("-----------|---------|--------|--------|--------|----------------------")

    gym_leaders = ['Falkner', 'Bugsy', 'Whitney', 'Morty', 'Chuck', 'Jasmine', 'Pryce', 'Clair']

    for gym in gym_leaders:
        current = current_levels[gym]
        levels_by_team = {}

        for team_size in team_sizes:
            optimal_levels = all_results[team_size]['optimal_levels']
            for gym_name, level, _ in optimal_levels:
                if gym_name == gym:
                    levels_by_team[team_size] = level
                    break

        team6_diff = current - levels_by_team.get(6, current)
        summary_content.append(
            f"{gym:10} | Level {current:2} | {levels_by_team.get(1, '?'):6} | {levels_by_team.get(3, '?'):6} | {levels_by_team.get(6, '?'):6} | {team6_diff:+3} ({'Too High' if team6_diff > 2 else 'Good'})")

    summary_content.append("")
    summary_content.append("=== TRAINER EXP CAPACITY BY TEAM SIZE ===")
    for team_size in team_sizes:
        total_exp = all_results[team_size]['total_trainer_exp']
        max_level = all_results[team_size]['max_team_level']
        summary_content.append(f"Team Size {team_size}: {total_exp:,} total EXP → Max Level {max_level:.1f}")

    summary_content.append("")
    summary_content.append("=== KEY FINDINGS ===")
    summary_content.append("1. Smaller teams can reach higher levels with the same trainer EXP")
    summary_content.append("2. Current gym levels are too high for teams of 3+ Pokemon")
    summary_content.append("3. Team size of 6 requires significant wild Pokemon grinding")
    summary_content.append("4. Solo runs (team=1) align well with current gym levels")
    summary_content.append("5. The 'level curve problem' is most severe for full teams")

    # Save summary report
    summary_filepath = os.path.join(output_dir, "level_curve_summary.txt")
    with open(summary_filepath, 'w', encoding='utf-8') as f:
        f.write("\n".join(summary_content))
    print(f"Summary report saved to: {summary_filepath}")


def main():
    """Main function to run the analysis and save outputs."""
    print("Pokemon Crystal Level Curve Calculator with File Output")
    print("=" * 55)

    output_dir = 'level_curve_output'
    team_sizes = [1, 3, 6]

    print(f"Output will be saved to: {os.path.abspath(output_dir)}")
    print("")

    # Run analysis for different team sizes
    for team_size in team_sizes:
        print(f"Analyzing team size: {team_size}")
        print("-" * 30)

        calculator = CrystalLevelCurveCalculator(team_size=team_size, output_dir=output_dir)
        optimal_levels, detailed_info = calculator.generate_level_curve_report()

        print("")

    # Generate summary report
    print("Generating summary report...")
    generate_summary_report(team_sizes, output_dir)

    print("")
    print("Analysis complete! Check the output directory for detailed results.")
    print(f"Files saved in: {os.path.abspath(output_dir)}")


if __name__ == "__main__":
    main()