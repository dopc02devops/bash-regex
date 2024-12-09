import re


def search_word():
    #    user: "system_u"
    #    role: "system_r"
    #    type: "spc_t"
    #    level: "s0"
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Search pattern
        search_pattern = re.compile(r"(user|role|type):\s\"\w+\_\w\"")
        """
        (user|role|type) matches an either or condition
        \s matches 1 occurrence of a space or new line
        """

        # Find matches
        matches = search_pattern.finditer(content)
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_word()
