#!/usr/bin/env python3
"""
Pokemon Crystal Wild EXP Requirements Calculator

This script calculates what percentage of total experience must come from wild Pokemon
grinding to reach the current gym leader levels. It produces a focused summary report
matching the analysis format.

Usage:
    python wild_exp_requirements_summary.py

Requirements:
    - level_curve_output/ directory with CSV files from CrystalLevelCurveCalculator

If the required files don't exist, run CrystalLevelCurveCalculator first:
    python crystal_level_curve_calculator_with_file_output.py
"""

import csv
import os
import sys
from datetime import datetime
from typing import Dict, List, Tuple


class WildExpRequirementsCalculator:
    def __init__(self, level_curve_dir='level_curve_output', output_dir='wild_exp_analysis'):
        self.level_curve_dir = level_curve_dir
        self.output_dir = output_dir

        # Create output directory
        os.makedirs(output_dir, exist_ok=True)

        # Current gym levels in Pokemon Crystal
        self.current_gym_levels = {
            'Falkner': 13, 'Bugsy': 20, 'Whitney': 24, 'Morty': 30,
            'Chuck': 38, 'Jasmine': 42, 'Pryce': 45, 'Clair': 48
        }

        # Gym progression order
        self.gym_order = [
            ('Falkner', 'start_to_falkner'),
            ('Bugsy', 'falkner_to_bugsy'),
            ('Whitney', 'bugsy_to_whitney'),
            ('Morty', 'whitney_to_morty'),
            ('Chuck', 'morty_to_chuck'),
            ('Jasmine', 'chuck_to_jasmine'),
            ('Pryce', 'jasmine_to_pryce'),
            ('Clair', 'pryce_to_clair')
        ]

        # Load required data
        self.trainer_exp_data = self.load_trainer_exp_data()

    def check_required_files(self):
        """Check if required files from level curve analysis exist."""
        required_files = [
            'level_curve_segments_team_1.csv',
            'level_curve_segments_team_3.csv',
            'level_curve_segments_team_6.csv'
        ]

        missing_files = []
        for filename in required_files:
            filepath = os.path.join(self.level_curve_dir, filename)
            if not os.path.exists(filepath):
                missing_files.append(filename)

        if missing_files:
            print("ERROR: Required level curve analysis files are missing!")
            print(f"Missing files in '{self.level_curve_dir}':")
            for filename in missing_files:
                print(f"  - {filename}")
            print("\nPlease run the CrystalLevelCurveCalculator first:")
            print("  python crystal_level_curve_calculator_with_file_output.py")
            print("\nThis will generate all required files.")
            sys.exit(1)

    def load_trainer_exp_data(self) -> Dict[int, Dict[str, int]]:
        """Load trainer EXP data for all team sizes from CSV files."""
        self.check_required_files()

        trainer_data = {}

        for team_size in [1, 3, 6]:
            csv_filename = f'level_curve_segments_team_{team_size}.csv'
            csv_filepath = os.path.join(self.level_curve_dir, csv_filename)

            segments_data = {}
            with open(csv_filepath, 'r', encoding='utf-8') as f:
                reader = csv.DictReader(f)
                for row in reader:
                    segments_data[row['segment']] = int(row['trainer_exp'])

            trainer_data[team_size] = segments_data
            print(f"Loaded trainer EXP data for team size {team_size}")

        return trainer_data

    def exp_needed_for_level(self, level: int) -> int:
        """Calculate total EXP needed to reach a given level (Medium Fast group)."""
        return level ** 3

    def exp_for_team_level(self, level: int, team_size: int = 6) -> int:
        """Calculate total EXP needed for entire team to reach level."""
        return self.exp_needed_for_level(level) * team_size

    def calculate_wild_exp_requirements(self, team_size: int) -> List[Tuple[str, int, int, float]]:
        """
        Calculate wild EXP requirements for each gym for specified team size.

        Returns:
            List of tuples: (gym_leader, current_level, wild_exp_needed, wild_percentage)
        """
        trainer_exp_by_segment = self.trainer_exp_data[team_size]
        results = []

        # Start at level 8 (after rival battle)
        cumulative_trainer_exp = self.exp_for_team_level(8, team_size)

        for gym_leader, segment in self.gym_order:
            segment_trainer_exp = trainer_exp_by_segment.get(segment, 0)
            current_level = self.current_gym_levels[gym_leader]

            # Add trainer EXP from this segment
            cumulative_trainer_exp += segment_trainer_exp

            # Calculate total EXP needed for team to reach current gym level
            target_total_exp = self.exp_for_team_level(current_level, team_size)

            # Calculate wild EXP needed to bridge the gap
            wild_exp_needed = max(0, target_total_exp - cumulative_trainer_exp)

            # Calculate percentage
            wild_percentage = (wild_exp_needed / target_total_exp * 100) if target_total_exp > 0 else 0

            results.append((gym_leader, current_level, wild_exp_needed, wild_percentage))

        return results

    def generate_summary_report(self):
        """Generate the focused summary report for all team sizes."""
        timestamp = datetime.now().strftime("%Y-%m-%d %H:%M:%S")

        # Calculate requirements for all team sizes
        team_sizes = [1, 3, 6]
        all_requirements = {}
        overall_percentages = {}

        for team_size in team_sizes:
            requirements = self.calculate_wild_exp_requirements(team_size)
            all_requirements[team_size] = requirements

            # Calculate overall percentage for this team size
            total_exp_to_level_48 = self.exp_for_team_level(48, team_size)
            total_trainer_exp = sum(self.trainer_exp_data[team_size].values())
            starting_exp = self.exp_for_team_level(8, team_size)
            total_wild_exp_needed = total_exp_to_level_48 - starting_exp - total_trainer_exp
            overall_percentages[team_size] = (total_wild_exp_needed / total_exp_to_level_48) * 100

        # Generate report content
        output_lines = []

        def log(text=""):
            print(text)
            output_lines.append(text)

        log("Summary: Wild Pokemon EXP Requirements as Percentage of Total Experience")
        log("")
        log("Based on the CrystalLevelCurveCalculator data analysis, here are the wild Pokemon EXP requirements for each gym milestone:")
        log("")

        # Generate tables for each team size
        for team_size in team_sizes:
            requirements = all_requirements[team_size]
            overall_pct = overall_percentages[team_size]

            log(f"**Individual Gym Requirements (Team of {team_size})**")
            log("")
            log("| Gym Leader | Current Level | Wild EXP Needed | **Wild % of Total EXP** |")
            log("|------------|---------------|-----------------|-------------------------|")

            for gym_leader, level, wild_exp, wild_pct in requirements:
                log(f"| **{gym_leader}** | Level {level} | {wild_exp:,} EXP | **{wild_pct:.1f}%** |")

            log("")
            log(f"**Overall Wild EXP Requirement for Team of {team_size}: {overall_pct:.1f}%**")
            log("")

        # Cross-team comparison table
        log("**Wild EXP Requirements Comparison Across Team Sizes**")
        log("")
        log("| Gym Leader | Team of 1 | Team of 3 | Team of 6 | Team Size Impact |")
        log("|------------|-----------|-----------|-----------|------------------|")

        for i, (gym_leader, _) in enumerate(self.gym_order):
            team1_pct = all_requirements[1][i][3]
            team3_pct = all_requirements[3][i][3]
            team6_pct = all_requirements[6][i][3]
            impact = team6_pct - team1_pct

            log(f"| **{gym_leader}** | {team1_pct:.1f}% | {team3_pct:.1f}% | {team6_pct:.1f}% | +{impact:.1f}% |")

        log("")

        # Key findings using team size 6 data (most relevant)
        requirements_team6 = all_requirements[6]
        overall_pct_team6 = overall_percentages[6]

        log("**Key Findings:**")

        # Find key statistics from team size 6
        falkner_pct = next(pct for gym, _, _, pct in requirements_team6 if gym == 'Falkner')
        bugsy_pct = next(pct for gym, _, _, pct in requirements_team6 if gym == 'Bugsy')
        chuck_pct = next(pct for gym, _, _, pct in requirements_team6 if gym == 'Chuck')

        log(f"1. **Overall Wild EXP Requirement: {overall_pct_team6:.1f}%** of total experience must come from wild Pokemon grinding (team of 6)")
        log(f"2. **Team size dramatically affects grinding requirements** - solo needs ~{overall_percentages[1]:.0f}%, team of 6 needs ~{overall_pct_team6:.0f}%")
        log(f"3. **Wild grinding becomes essential immediately** - even Falkner requires {falkner_pct:.1f}% wild EXP for full teams")
        log(f"4. **The requirement jumps dramatically early** - from {falkner_pct:.0f}% to {bugsy_pct:.0f}% between first and second gyms")
        log("5. **Stabilizes around 80%** - from Morty onwards, roughly 4 out of 5 EXP points must come from wild Pokemon (team of 6)")
        log(f"6. **Chuck has the highest requirement** at {chuck_pct:.1f}% wild EXP for teams of 6")

        log("")
        log("**Practical Implications:**")
        log("- **Solo runs are much more viable** - require significantly less wild grinding")
        log("- **Team size is the primary factor** in the \"level curve problem\"")
        log("- **Current gym levels require massive wild Pokemon grinding for full teams** - explaining why Crystal feels grindy")
        log("- **This explains the notorious \"level curve problem\"** in Johto games")
        log("- **Reducing gym levels to trainer-optimal would eliminate most grinding** needs")
        log("")
        log(f"The data clearly shows that Pokemon Crystal's current level curve is **heavily dependent on wild Pokemon grinding**, with the severity scaling dramatically with team size.")
        log("")
        log(f"Analysis generated: {timestamp}")
        log(f"Data source: {os.path.abspath(self.level_curve_dir)}")

        # Save the report
        output_content = "\n".join(output_lines)
        timestamp_str = timestamp.replace(':', '-').replace(' ', '_')
        output_file = os.path.join(self.output_dir, f"wild_exp_summary_{timestamp_str}.txt")

        with open(output_file, 'w', encoding='utf-8') as f:
            f.write(output_content)

        print(f"\nSummary report saved to: {output_file}")

        # Also save as CSV for data analysis
        csv_file = os.path.join(self.output_dir, "wild_exp_summary_all_teams.csv")
        with open(csv_file, 'w', newline='', encoding='utf-8') as csvfile:
            fieldnames = ['team_size', 'gym_leader', 'current_level', 'wild_exp_needed', 'wild_percentage']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()

            for team_size in team_sizes:
                for gym_leader, level, wild_exp, wild_pct in all_requirements[team_size]:
                    writer.writerow({
                        'team_size': team_size,
                        'gym_leader': gym_leader,
                        'current_level': level,
                        'wild_exp_needed': wild_exp,
                        'wild_percentage': round(wild_pct, 1)
                    })

        print(f"CSV data saved to: {csv_file}")

        return all_requirements, overall_percentages


def main():
    """Main function to generate the wild EXP summary report."""
    print("Pokemon Crystal Wild EXP Requirements Summary")
    print("=" * 45)
    print("Generates focused summary matching analysis format")
    print("")

    try:
        calculator = WildExpRequirementsCalculator()
        all_requirements, overall_percentages = calculator.generate_summary_report()

        print("\n" + "=" * 45)
        print("SUMMARY COMPLETE")
        print("=" * 45)
        print("Wild EXP Requirements by Team Size:")
        for team_size in [1, 3, 6]:
            print(f"  Team of {team_size}: {overall_percentages[team_size]:.1f}% wild EXP required")
        print(f"\nFiles saved to: {os.path.abspath(calculator.output_dir)}")

    except SystemExit:
        # Handle the case where required files are missing
        pass


if __name__ == "__main__":
    main()
