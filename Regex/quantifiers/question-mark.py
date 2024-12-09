import re


def search_question_mark():

    # Matches 0 or 1 occurrence of the preceding character, making it optional (before a quantifier)
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Search pattern
        search_pattern = re.compile(r"datt?dog")
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_question_mark()
