# def is_palindrome(string):
#     pass


def is_palindrome (string) :
    
    comparison_str = string [::-1]
    
    if string == comparison_str:
        return True