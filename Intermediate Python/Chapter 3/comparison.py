# Comparison operators are used to compare python values
# Comparison should be between same object types but exception is float with int & boolean with int

print(2 < 3)  # True

print(2 == 3)  # False

print(2 <= 3)  # True

print(3 <= 3)  # True

print(True == 1)  # True

print('carl' < 'chris')  # True

# Create arrays
import numpy as np
my_house = np.array([18.0, 20.0, 10.75, 9.50])
your_house = np.array([14.0, 24.0, 14.25, 9.0])

# my_house greater than or equal to 18
print(my_house >= 18)

# my_house less than your_house
print(my_house < your_house)

