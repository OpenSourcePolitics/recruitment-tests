def fizzbuzz(n):
    array = [];
    for i in range(1, n+1):
        string = "";
        if i % 3 == 0:
            string += "fizz"
        if i % 5 == 0: 
            string += "buzz"
        if string == "":
            string = str(i)
        array.append(string)
    return array
pass

