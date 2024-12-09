import re


def search_search():
    # <re.Match object; span=(0, 9), match='##Default'>
    # Returns only first occurrence

    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        search_pattern = re.compile(r"apiKey")
        # Find matches
        matches = search_pattern.search(content)
        print(matches)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_search()
