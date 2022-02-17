def fizzbuzz(n):
    
    result = []

#Returning empty array for any given integer less or equal than 0 
    if n <= 0:
        return result
    else:
    #Counting from 1 until given integer
        for n in range (1,n+1):

        #If integer is a pultiple of 3 and 5
            if n % 3 == 0 and n % 5 == 0: 
                result.append("fizzbuzz")

        #If integer is a multiple of 3
            elif n % 3 == 0:
                result.append("fizz")

        #If integer is a multiple of 5
            elif n % 5 == 0:
                result.append("buzz")
                
            else: result.append(str(n))

        return result 

