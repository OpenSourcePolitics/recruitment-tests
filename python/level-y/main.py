from operator import le
import math;

def compute_temperature_data(temperature_data):
    """
    Given a list of temperatures, compute the average, minimum, and maximum and median
    """
    temperature_data.sort()
    average = sum(temperature_data) / float(len(temperature_data))
    minimum = temperature_data[0]
    maximum = temperature_data[-1]
    median = temperature_data[int(math.floor((len(temperature_data) / 2)))]
    if len(temperature_data) % 2 == 0 and temperature_data[int(math.floor((len(temperature_data) / 2)))] != temperature_data[int(math.floor((len(temperature_data) / 2)) - 1)]:
        median = (temperature_data[int(math.floor((len(temperature_data) / 2)))] + temperature_data[int(math.floor((len(temperature_data) / 2)) - 1)]) / 2
    return [(round(median*10)/10), (round(average*10)/10), (round(minimum*10)/10), (round(maximum*10)/10)]
pass

