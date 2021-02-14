"""
Different function definitions. Using my_ before functions to
not redefine built-in functions.
"""

# Function definition
def inc(a):
    return a + 1

# Function definition with lambda
my_max = lambda a, b: a if a > b else b


print('inc(5) =', inc(5))
print('my_max(8, 6) =', my_max(8, 6))
