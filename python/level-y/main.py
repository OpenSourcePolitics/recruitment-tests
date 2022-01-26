import statistics 

def compute_temperature_data(temperature_data):

    new_liste = []
    median = round(statistics.median(temperature_data), 1)
    new_liste.append(median)
    average = round(statistics.mean(temperature_data), 1)
    new_liste.append(average)
    minimum = round(min(temperature_data), 1)
    new_liste.append(minimum)
    maximum = round(max(temperature_data), 1)
    new_liste.append(maximum)
   
    return new_liste
