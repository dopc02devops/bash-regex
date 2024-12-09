import re


def search_word_and_non_word_xters():

    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        # search_pattern = re.compile(r"\w")  # word characters
        search_pattern = re.compile(r"\W")  # non Word characters
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_word_and_non_word_xters()
