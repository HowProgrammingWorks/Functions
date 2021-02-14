"""Examples of defining functions with multiple parameters"""

def str_sum(*args):
    """Function with multiple parameters"""
    return " ".join(args)

print(str_sum("Hello,", "World"))
print(str_sum("spam", "eggs", "and", "bacon"))

def print_dict(**kwargs):
    """Function with multiple keyword arguments"""
    for key, value in kwargs.items():
        print("%s: %s" % (key, value))

print_dict(first_name="John", last_name="Doe")
