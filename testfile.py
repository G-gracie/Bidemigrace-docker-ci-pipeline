from greet_user import greet
def test_greet_default():
    assert greet() == "Hi, this is Bidemi!"
def test_greet_with_name():
    assert greet("Grace") =="Hi, this is Grace!"
