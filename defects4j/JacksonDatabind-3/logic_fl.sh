#!/bin/bash

# List of script files to be executed
script_files=("coverage.sh" "static_analyzer.sh" "dynamic_analyzer.sh" "localizer.sh")

# Iterate over each script file
for script in "${script_files[@]}"; do
    # Execute the script
    ./"$script"

    # Check the exit status
    if [ $? -eq 0 ]; then
        echo "$script executed successfully."
    else
        echo "Error: $script execution failed. Stopping further execution."
        exit 1  # Exit the main script if any of the scripts fails
    fi
done

echo "All scripts executed successfully."
