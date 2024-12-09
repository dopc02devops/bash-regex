import re


def search_match():
    # <re.Match object; span=(0, 9), match='##Default'>
    # This only return the first word in the string
    try:
        with open('examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        search_pattern = re.compile(r"##Default")
        # Find matches
        matches = search_pattern.match(content)
        print(matches)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_match()
