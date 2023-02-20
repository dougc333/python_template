from ..mylib.logic import wiki, search_wiki


def test_wiki():
    assert("Barack" in wiki("Barack Obama"))

def test_search():
    assert("Barack Obama" in search_wiki("Barack"))