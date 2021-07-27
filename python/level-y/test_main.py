import pytest
from main import compute_temperature_data as ctd

def test_compute_temperature_data():
    assert ctd([13,14]) == [13.5, 13.5, 13, 14]
    assert ctd([4, 18, 34, 12, 17]) == [17, 17, 4, 34]
    assert ctd([-10, 23, 17, 23, 89, 34.4]) == [23, 29.4, -10, 89]
    assert ctd([0, 0.1, 0.2, 45]) == [0.2, 11.3, 0, 45]
    assert ctd([78.89]) == [78.9, 78.9, 78.9, 78.9]