import re


def search_word_boundaries():
    # Using \b and \B can be very effective in constructing patterns for finding or excluding whole words or portions
    # of words within larger strings.

    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        # search_pattern = re.compile(r"\d") # digits
        # search_pattern = re.compile(r"\barg")  # Matching at the beginning of a word block
        # search_pattern = re.compile(r"\bdatydog\b")  # Matching Whole Words Only
        search_pattern = re.compile(r"\Bdog3")  # Matches at the end of a word block
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_word_boundaries()
