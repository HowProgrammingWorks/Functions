"""
Introspection examples. Using my_ before functions to
not redefine built-in functions.
"""

import inspect


def my_sum(a, b):
    return a + b


my_max = lambda x, y: x if x > y else y

print('Names:')
print('my_sum:', my_sum.__name__)
print('my_max:', my_max.__name__)

print('Arguments:')
print('my_sum:', str(inspect.signature(my_sum)))
print('my_max:', str(inspect.signature(my_max)))

print('Anonymous function: ' + (lambda x: x).__name__)

print('Function code:')
print('my_sum:', inspect.getsource(my_sum))
print('my_max:', inspect.getsource(my_max))
