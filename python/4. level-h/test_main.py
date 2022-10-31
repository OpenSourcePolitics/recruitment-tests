import pytest
from main import compute_executable_projects as cep


def test_compute_executable_projects():
    assert cep(2, [(10,5),(0,3)],2) == [1,2]
    assert cep(3, [(2,3,4),(7,10,2),(0,0,0)], 1) == [2]
    assert cep(1, [(8,9)], 0) == 'No projects, sorry!'
