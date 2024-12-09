import re


def ignore_case():
    # "/etc/secret-volume"
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Search pattern
        search_pattern = re.compile(r"allowingdatadog", re.IGNORECASE)
        """
        """

        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    ignore_case()
