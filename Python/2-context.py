"""Context examples"""

cities = ['Athens', 'Roma', 'London', 'Bejing', 'Kiev', 'Riga']
f = lambda s: len(s)

def f1():
    cities = ['Athens', 'Roma']
    f = lambda s: [x.upper() for x in s]
    print("in f1:")
    print(cities)
    print(f(cities))

    def inner():
        f = lambda s: [x.lower() for x in s]
        print("inner in f1:")
        print(cities)
        print(f(cities))
    inner()

f1()

print("outer:")
print(cities)
print(f(cities))
