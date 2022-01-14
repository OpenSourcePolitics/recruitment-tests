import statistics

temperature_data = []

def compute_temperature_data(temperature_data):
    compute_data = []

    #median
    median = statistics.median(temperature_data)
    rounded_median = round(median,1)
    compute_data.append(rounded_median)

    #average
    average = statistics.mean(temperature_data)
    rounded_average = round(average,1)
    compute_data.append(rounded_average)

    #min
    data_min = min(temperature_data)
    rounded_data_min = round(data_min,1)
    compute_data.append(rounded_data_min)

    #max
    data_max = max(temperature_data)
    rounded_data_max = round(data_max,1)
    compute_data.append(rounded_data_max)

    return compute_data