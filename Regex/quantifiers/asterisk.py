import re


def search_asterisk():

    # Matches 0 or more occurrences of the preceding character(before a quantifier) or group.
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Search pattern
        search_pattern = re.compile(r"dat*dog")
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_asterisk()
