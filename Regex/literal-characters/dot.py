import re


def search_dot():

    # Matches any character except a newline (\n).
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        search_pattern = re.compile(r"datadog3.")
        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_dot()
