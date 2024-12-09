import re


def search_dates():
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Search pattern
        # search_pattern = re.compile(r"\d\d\d\d\-\d\d?\-\d\d?")
        # search_pattern = re.compile(r"\d\d\d\d.\d\d?.\d\d?")
        # search_pattern = re.compile(r"\d\d\d\d[-./_]\d\d?[-./_]\d\d?")
        # search_pattern = re.compile(r"\d\d\d\d[-./_]0[45]?[-./_]\d\d?")
        search_pattern = re.compile(r"\d{4}[-./_]0?[0-9][-./_]\d{1,2}")
        """
        \- matches - exactly instead of any character
        ? indicates matches for 1 or 2 digits occurrence 
        \d indicates digits
        . indicates any character except a new line
        [-./_] matches any occurrences inside the set
        [45] matches any occurrences inside the set ie 4 and 5 
        \d{4} matches exactly 4 digits
        [0-9] matches range between 0 and 9
        \d{1,2} matches 1 or 2 occurrences
        """

        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_dates()
