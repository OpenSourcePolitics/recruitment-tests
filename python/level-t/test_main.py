import pytest
from main import is_palindrome

def test_is_palindrome():
    assert is_palindrome("kayak")
    assert not is_palindrome("success")
    assert is_palindrome("Sator Arepo Tenet Opera Rotas")
    assert is_palindrome("Tu l'as trop ecrase Cesar, ce port-salut!")
