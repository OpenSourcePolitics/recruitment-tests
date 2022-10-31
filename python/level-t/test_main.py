import pytest
from main import is_palindrome

def test_single_word_palindrome():
    assert is_palindrome("kayak")

def test_false_single_word_palindrome():
    assert not is_palindrome("success")

def test_sentence_palindrome():
    assert is_palindrome("Sator Arepo Tenet Opera Rotas")

def test_sentence_with_punctuation_palindrome():
    assert is_palindrome("Tu l'as trop ecrase Cesar, ce port-salut!")
