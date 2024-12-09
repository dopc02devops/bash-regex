import re


def search_caret_dollar():

    # ^: Anchors the pattern to the start of the string.
    # $: Anchors the pattern to the end of the string.
    try:
        with open('../examplefile.yaml', 'r') as file:
            content = file.read()
        # Create search pattern
        # search_pattern = re.compile(r"^##Default") start of string
        search_pattern = re.compile(r"agent$")
        # Find matches
        matches = search_pattern.finditer("remoteConfiguration.enabled -- Set to true to enable remote configuration "
                                          "on the Cluster Agent (if set) and the node agent")
        for match in matches:
            print(match)

    except FileNotFoundError:
        print("The file was not found.")


if __name__ == "__main__":
    search_caret_dollar()
