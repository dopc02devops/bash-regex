import re


def search_non_digits_and_digits():

    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        # search_pattern = re.compile(r"\d") # digits
        search_pattern = re.compile(r"\D")  # non-digits
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_non_digits_and_digits()
