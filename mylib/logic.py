import wikipedia


def wiki(name, length=1):
    """fetcher"""
    return wikipedia.summary(name, length)

def search_wiki(name):
    return wikipedia.search(name)
