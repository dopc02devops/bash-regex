import re


def search_sets():
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        # search_pattern = re.compile(r"[dog3]")  # Searches for all the words in the set
        # search_pattern = re.compile(r"[d-h]")  # Searches for all the words in the range
        search_pattern = re.compile(r"[1-6]")  # Searches for all the numbers in the set
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_sets()
