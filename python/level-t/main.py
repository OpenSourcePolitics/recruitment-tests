import re

# def is_palindrome(string):
#     pass

def is_palindrome (string) :
    
    lower_case_str = string.lower()
    #letter_only_str = lower_case_str.replace("!" "-", " ")
    letter_only_str = re.sub("[^a-z]", " ", lower_case_str)
    comparison_str = letter_only_str [::-1]

    if letter_only_str == comparison_str:
        return True