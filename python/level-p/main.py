# code initial :
# def fizzbuzz(n):
#     pass

# test failed : range à partir de 1, mais
# la réponse n'apparaît pas en tableau

def fizzbuzz (n) :
    if n <= 0 :
        return []
    else :
        for x in range(n+1) :
            if x == 0 :
                continue
            if (x % 3 == 0 and x % 5 == 0):
                print ('fizzbuzz')
            elif (x % 3 == 0):
                print ('fizz')
            elif (x % 5 == 0):
                print ('buzz')
            else:
                print (str(x))
