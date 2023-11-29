# We can use numpy as 2D python lists

"""
Use np.array() to create a 2D numpy array from baseball. Name it np_baseball.
Print out the type of np_baseball.
Print out the shape attribute of np_baseball. Use np_baseball.shape.
"""
# Import numpy
import numpy as np

# Create baseball, a list of lists
baseball = [[180, 78.4],
            [215, 102.7],
            [210, 98.5],
            [188, 75.2]]

# Create a 2D numpy array from baseball: np_baseball
np_baseball = np.array([[180, 78.4],
            [215, 102.7],
            [210, 98.5],
            [188, 75.2]])

# Print out the type of np_baseball
print(type(np_baseball))

# Print out the shape of np_baseball
print(np_baseball.shape)

""""
Use np.array() to create a 2D numpy array from baseball. Name it np_baseball.
Print out the shape attribute of np_baseball.
"""
# Import numpy package
import numpy as np

# Create a 2D numpy array from baseball: np_baseball
np_baseball = np.array(baseball)

# Print out the shape of np_baseball
print(np_baseball.shape)

""""
Print out the 50th row of np_baseball.
Make a new variable, np_weight_lb, containing the entire second column of np_baseball.
Select the height (first column) of the 124th baseball player in np_baseball and print it out.
"""
# Import numpy package
import numpy as np

# Create np_baseball (2 cols)
np_baseball = np.array(baseball)

# Print out the 50th row of np_baseball
print(np_baseball[49,:])

# Select the entire second column of np_baseball: np_weight_lb
np_weight_lb = np_baseball[:,1]

# Print out height of 124th player
print(np_baseball[123,0])

""""
You managed to get hold of the changes in height, weight and age of all baseball players. It is available as a 2D numpy array, updated. Add np_baseball and updated and print out the result.
You want to convert the units of height and weight to metric (meters and kilograms, respectively). As a first step, create a numpy array with three values: 0.0254, 0.453592 and 1. Name this array conversion.
Multiply np_baseball with conversion and print out the result.
"""

# Import numpy package
import numpy as np

# Create np_baseball (3 cols)
np_baseball = np.array(baseball)

# Print out addition of np_baseball and updated
print(np_baseball + updated)

# Create numpy array: conversion
conversion = np.array([0.0254, 0.453592, 1])

# Print out product of np_baseball and conversion
print(np_baseball * conversion)












