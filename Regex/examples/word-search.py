import re


def search_word():
    # "/etc/secret-volume"
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Search pattern
        search_pattern = re.compile(r"\"\/\w+\/\w+\-\w+\"")
        """
        \" matches " exactly
        \/ matches / exactly
        \- matches - exactly
        \w+ matches one or more word occurrences
        """

        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_word()
