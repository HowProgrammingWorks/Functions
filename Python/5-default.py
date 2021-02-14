"""
Python way for default parameter values. Using my_ before functions to
not redefine built-in functions.
"""

def my_sum(a, b=2, c=3):
    """Defining function using default parameters a, b"""
    return a + b + c

print(my_sum(1))
print(my_sum(1, 2))
print(my_sum(1, 2, 3))
