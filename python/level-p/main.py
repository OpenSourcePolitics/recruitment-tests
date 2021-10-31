# code initial :
# def fizzbuzz(n):
#     pass

# test failed : range à partir de 1, mais
# la réponse n'apparaît pas en tableau

def fizzbuzz (n) :

    list_answer = []

    if n <= 0 :
        list_answer

    else :
        for x in range(1, n+1) :
            if (x % 3 == 0 and x % 5 == 0):
                list_answer.append ('fizzbuzz')
            elif (x % 3 == 0):
                list_answer.append ('fizz')
            elif (x % 5 == 0):
                list_answer.append ('buzz')
            else:
                list_answer.append (str(x))

    return list_answer