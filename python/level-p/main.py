# code initial :
# def fizzbuzz(n):
#     pass

# test failed -> 2 problèmes :
# n passe les 3 conditions et est donc printé 3x
# fizzbuzz ne passe

def fizzbuzz (n) :
    if n <= 0 :
        return []
    else :
        for x in range(n) :
            print ('fizz' if x % 3 == 0 else x)
            print ('buzz' if x % 5 == 0 else x)
            print ('fizzbuzz' if x % 3 == 0 and x % 5 == 0 else x)
