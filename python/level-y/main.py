import statistics

def compute_temperature_data(temperature_data):
    return [round(statistics.median(temperature_data),1),round(statistics.mean(temperature_data),1),round(min(temperature_data),1),round(max(temperature_data),1)]
