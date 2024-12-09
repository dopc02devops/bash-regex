import re


def search_finditer():
    # <re.Match object; span=(1123, 1129), match='apiKey'>
    # <re.Match object; span=(1227, 1233), match='apiKey'>
    # <re.Match object; span=(1269, 1275), match='apiKey'>
    # <re.Match object; span=(1483, 1489), match='apiKey'>
    # <re.Match object; span=(1494, 1500), match='apiKey'>
    # We have 5 matches, the first begins at position 1123 and ends at 1129
    try:
        with open('examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        search_pattern = re.compile(r"apiKey")
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match.span())  # Prints all the positions
            print(match.start(), match.end())  # Prints all the positions
            print(match.group())  # Prints the actual strings

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_finditer()
