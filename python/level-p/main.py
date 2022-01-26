def fizzbuzz(n):
    liste = []
    for i in range(1,n+1):
        liste.append(str(i))
        if i%15 == 0 :
            liste[i-1] = "fizzbuzz"
            i += 1
        elif i%5 == 0 :
            liste[i-1] = "buzz"
            i += 1
        elif i%3 == 0 :
            liste[i-1] = "fizz"
            i += 1      
       
    return liste
