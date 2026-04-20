import os
import shutil

def update_properties_file(filename, key, new_value, transform_function=None):
    """ Update or add a key-value pair in a properties file while maintaining order.

    Args:
    filename (str): Path to the properties file.
    key (str): The key to update or add.
    new_value (any): The new value for the key.
    transform_function (function, optional): A function that takes the old value and returns a new value.
    """
    # Read the properties file
    with open(filename, 'r') as file:
        lines = file.readlines()

    # Prepare to rewrite the file with the updated key
    found = False
    with open(filename, 'w') as file:
        for line in lines:
            stripped_line = line.strip()
            if stripped_line.startswith(key + '='):
                found = True
                old_value = stripped_line[len(key)+1:]  # Extract current value
                if transform_function:
                    new_value = transform_function(old_value)
                line = f"{key}={new_value}\n"
            file.write(line)

        # If the key was not found, add it to the file
        if not found:
            file.write(f"{key}={new_value}\n")

def update_base_dir(old_base_dir):
    #Replace <new_base_dir> with your directory.
    return old_base_dir.replace('/data/bug_db/subjects', '<new_base_dir>')

def update_all_properties(base_dir):
    
    #Put Key-Value pairs to be replaced.
    key_value_pairs = [
	('print.debug.info', 'false')
    ]

    # List all entries in the directory given by "base_dir"
    for entry in os.listdir(base_dir):
        full_path = os.path.join(base_dir, entry)
        # Check if it is a directory
        if os.path.isdir(full_path):
            config_path = os.path.join(full_path, 'config.properties')
            backup_path = config_path + ".old"
            shutil.copy(config_path, backup_path)
            print(f"Backup created at {backup_path}")
            # Check if config.properties exists in this directory
            if os.path.isfile(config_path):
                for key, value in key_value_pairs:
                    update_properties_file(config_path, key, value, update_base_dir)
                print(f"Updated {config_path}")
            else:
                print(f"No config.properties found in {full_path}")

def get_dir_path(path):
    entries = path.split(':')
    new_entries = []
    seen = set()
    for entry in entries:
        # Extract the directory path from each entry
        directory_path = os.path.dirname(entry)
        # Append '*' to the directory path
        modified_path = directory_path + "/*"
        # Check if the modified path is already added, if not add to new_entries and seen
        if modified_path not in seen:
            new_entries.append(modified_path)
            seen.add(modified_path)
    return ':'.join(new_entries)

if __name__ == "__main__":
    import sys
    if len(sys.argv) != 2:
        print("Usage: python update_config.py <base_dir>")
        sys.exit(1)
    base_dir = sys.argv[1]
    update_all_properties(base_dir)
