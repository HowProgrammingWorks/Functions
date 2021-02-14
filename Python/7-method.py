"""
Methods examples.

Methods are being stored in dictionary. Using my_ before functions to
not redefine built-in functions.
"""

def inc(a):
    return a + 1

my_max = lambda a, b: a if a > b else b


obj = {
    'inc': inc,
    'my_max': my_max
}


print('obj.inc.__name__:', obj['inc'].__name__)
print('obj.my_max.__name__:', obj['my_max'].__name__)

print('obj["inc"](3):', obj['inc'](3))
print('obj["my_max"](4, 1):', obj['my_max'](4, 1))
