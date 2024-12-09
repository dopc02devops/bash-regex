import re


def search_url():
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        search_pattern = re.compile(r"(\w{5})?(:\//)\w+\.\w+(.|/)\w+(.|/)")
        """
        \w{5} match exactly 5 words
        (.|/) match condition of either . or / occurrence
        """

        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_url()
