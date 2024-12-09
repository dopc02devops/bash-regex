import re


def split_sub():
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        search_pattern = re.compile(r"mysecret")
        """
        """

        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(f"Found match: {match.group()} at position {match.start()}")
        updated_content = search_pattern.sub("yoursecret", content)

        with open('../examplefile.yaml', 'w') as file:
            file.write(updated_content)

    except FileNotFoundError:
        print("The file was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")


if __name__ == "__main__":
    split_sub()
