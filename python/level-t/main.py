import string

def is_palindrome(s):
    s = s.lower() #Removing case sensitivity
    s = s.replace(" ", "") #Removing space sensitivity 
    s = s.translate(str.maketrans('','',string.punctuation)) #Removing punctuation sensitivity 

    return s == s [::-1]

