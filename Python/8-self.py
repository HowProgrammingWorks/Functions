"""
Example of using self while
storing functions in a dictionary and in a class
"""

kiev = {
    'name': 'Kiev',
    'year': 482,
    'f1': (lambda self: self['name']),
    'f2': (lambda self: self['year'])
}


class City:
    """A class which defines city"""
    def __init__(self, name, year):
        """Constructor with 3 parameters. Using self for
        referencing to instance attributes"""
        self.name = name
        self.year = year

    def f1(self):
        """name getter"""
        return self.name

    def f2(self):
        """year getter"""
        return self.year


lviv = City('Lviv', 1240)

print('kiev["f1"](kiev):', kiev['f1'](kiev))
print('kiev["f2"](kiev)', kiev['f2'](kiev))

print('lviv.f1():', lviv.f1())
print('lviv.f2():', lviv.f2())
