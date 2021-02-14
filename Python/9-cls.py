"""
Examples of using cls.
"""

class MathConstants:
    """Creating a class which stores some mathematical constants.
    All methods use decorator @classmethod defining them as class methods.
    Passing cls parameter to each method to refer to its class.
    """
    PI = 3.14
    E = 2.71
    SQRT2 = 1.414

    @classmethod
    def get_pi(cls):
        """PI getter"""
        return cls.PI

    @classmethod
    def get_e(cls):
        """e getter"""
        return cls.E

    @classmethod
    def get_sqrt2(cls):
        """Square root of 2 getter"""
        return cls.SQRT2


print('MathConstants.get_pi():', MathConstants.get_pi())
print('MathConstants.get_e():', MathConstants.get_e())
print('MathConstants.get_sqrt2():', MathConstants.get_sqrt2())
