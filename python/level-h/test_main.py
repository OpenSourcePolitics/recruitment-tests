import pytest
from main import compute_executable_projects as cep

def test_simple_case():
    assert cep(
        1,
        [{"Planting trees": 10, "Music festival": 5}],
        4
    ) == {"Planting trees", "Music festival"}

def test_raising_threshold():
    assert cep(
        1,
        [{"Planting trees": 10, "Music festival": 5}],
        6
    ) == {"Planting trees"}
    
def test_two_voters():
    assert cep(
        2,
        [
            {"Planting trees": 10, "Music festival": 5},
            {"Planting trees": 3, "Music festival": 1}
        ],
        6
    ) == {"Planting trees", "Music festival"}
    
def test_high_threshold():
    assert cep(
        2,
        [
            {"Planting trees": 10, "Music festival": 5},
            {"Planting trees": 3, "Music festival": 1}
        ],
        15
    ) == set()
