import re


def search_email():
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # search_pattern = re.compile(r"[a-zA-Z0-9-._]+@[a-z]+.[a-z]+")
        search_pattern = re.compile(r"([a-zA-Z0-9-._]+)@([a-z]+.[a-z]+)")  # grouped
        """
        [a-zA-Z0-9-._]+ match words, caps, digits, -, . and + more than 1 occurrence
        """

        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)
            # print(match.group(0)) # actual string
            # print(match.group(1))  # group 1

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_email()
