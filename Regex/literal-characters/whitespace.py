import re


def search_white_and_non_whitespace_xter():


    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        # search_pattern = re.compile(r"\s")  # whitespace
        search_pattern = re.compile(r"\S")  # whitespace
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_white_and_non_whitespace_xter()
