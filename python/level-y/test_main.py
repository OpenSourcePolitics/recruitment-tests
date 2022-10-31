import pytest
from main import compute_temperature_data as ctd

def test_short_input():
    assert ctd([13,14]) == [13.5, 13.5, 13, 14]

def test_long_input():
    assert ctd([4, 18, 34, 12, 17]) == [17, 17, 4, 34]

def test_negative_values():
    assert ctd([-10, 23, 17, 23, 89, 34.4]) == [23, 29.4, -10, 89]

def test_decimal_input():
    assert ctd([0, 0.1, 0.2, 45]) == [0.2, 11.3, 0, 45]

def test_single_input():
    assert ctd([78.89]) == [78.9, 78.9, 78.9, 78.9]
