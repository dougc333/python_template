import wikipedia


def wiki(name="War Goddess", length=1):
    """fetcher"""
    return wikipedia.summary(name, length)