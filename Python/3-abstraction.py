"""Abstraction examples"""

import math

power = math.pow
square = lambda x: power(x, 2)
cube = lambda x: power(x, 3)

print(power(4, 2))
print(square(4))

print(power(2, 3))
print(cube(2))
