import re


def search_braces():

    # Matches between n and m occurrences of the preceding character.(before a quantifier)
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Search pattern
        search_pattern = re.compile(r"dat{2,4}dog")
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_braces()
