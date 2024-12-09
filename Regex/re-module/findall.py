import re


def search_findall():
    # apiKey
    # apiKey
    # apiKey
    # apiKey
    # apiKey

    try:
        with open('examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        search_pattern = re.compile(r"apiKey")
        # Find matches
        matches = search_pattern.findall(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_findall()
