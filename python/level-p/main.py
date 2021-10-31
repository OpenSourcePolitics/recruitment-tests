# code initial :
# def fizzbuzz(n):
#     pass

# test failed : fizzbuzz ne passe pas

def fizzbuzz (n) :
    if n <= 0 :
        return []
    else :
        for x in range(n) :
            if (x % 3 == 0):
                print('fizz')
            elif (x % 5 == 0):
                print ('buzz')
            elif (x % 3 == 0 and x % 5 == 0):
                print ('fizzbuzz')
            else:
                print (x)
