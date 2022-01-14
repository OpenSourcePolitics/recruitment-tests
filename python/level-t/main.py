import re

def is_palindrome (string) :
    
    lower_case_str = string.lower()
    letter_only_str = re.sub("[^a-z]", " ", lower_case_str)
    no_whitespace_str = letter_only_str.replace(" ", "")

    comparison_str = no_whitespace_str [::-1]

    if no_whitespace_str == comparison_str:
        return True