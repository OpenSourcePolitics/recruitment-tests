# def is_palindrome(string):
#     pass



def is_palindrome (string) :
    
    lower_case_str = string.lower()
    comparison_str = lower_case_str [::-1]
    

    if lower_case_str == comparison_str:
        return True
