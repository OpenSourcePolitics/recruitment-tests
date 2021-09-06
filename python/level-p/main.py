def fizzbuzz(n):
    result = []
    for x in range(1,n+1):
        result.append(("fizzbuzz" if x%15==0 else "fizz" if x%3==0 else "buzz" if x%5==0 else str(x)))
    return result