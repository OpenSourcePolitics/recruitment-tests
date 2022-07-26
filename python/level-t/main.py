import re
def is_palindrome(string):
    """
    Checks if a string is a palindrome.
    """
    string = re.sub("[^a-zA-Z0-9]+", "",string).lower()
    if string == string[::-1]:
        return True
    return False
pass
