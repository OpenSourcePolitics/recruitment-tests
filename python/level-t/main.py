def is_palindrome(a):
    a = a.lower()
    a = a.replace(" ", "")
    a = ''.join(filter(str.isalpha, a))
    print(a)
    b = ""
    for i in a:
        b = i + b
    return a == b


print(is_palindrome("Tu l'as trop ecrase Cesar, ce port-salut!"))
