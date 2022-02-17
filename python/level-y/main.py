temperature_data = [0]

#Computing median
def median(temperature_data):
        data = sorted(temperature_data)
        index = len(data) // 2
    
    # If the temperature_data is odd  
        if len(temperature_data) % 2 != 0:
                median= data[index]
                
    # If the temperature_data is even
        else:
            median=(data[index - 1] + data[index]) / 2
        return median

#Computing average 
def average(temperature_data):
            return sum(temperature_data) / len(temperature_data)

#Computing min value 
def mini(temperature_data): 
            data = sorted(temperature_data)
            return min(temperature_data)

#Computing max value 
def maxi(temperature_data):
            data = sorted(temperature_data)
            return max(temperature_data)

#Computing temperature_data (median, average, min, max)  
def compute_temperature_data(temperature_data): 
    a=round(median(temperature_data),1)
    b= round(average(temperature_data),1)
    c= round(mini(temperature_data),1)
    d= round(maxi(temperature_data),1)
    
    return [a, b, c, d]
 
a,b,c,d = compute_temperature_data(temperature_data)
 
results=[]
 
results.append([a,b,c,d])









