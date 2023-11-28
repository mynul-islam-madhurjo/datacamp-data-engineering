# Numpy contains one fixed type of data if string mixed with numbers, numbers become string
# Import the numpy package as np
"""'
Create a numpy array from the weight_lb list with the correct units. Multiply by 0.453592 to go from pounds to kilograms. Store the resulting numpy array as np_weight_kg.
Use np_height_m and np_weight_kg to calculate the BMI of each player. Use the following equation:

Save the resulting numpy array as bmi.
Print out bmi.
"""

import numpy as np

# Create list baseball
baseball = [180, 215, 210, 210, 188, 176, 209, 200]

# Create a numpy array from baseball: np_baseball
np_baseball = np.array([180, 215, 210, 210, 188, 176, 209, 200])

# Print out type of np_baseball
print(type(np_baseball))

# Baseball players' height

# Import numpy
import numpy as np

# Create a numpy array from height_in: np_height_in
np_height_in = np.array(height_in)

# Print out np_height_in
print(np_height_in)

# Convert np_height_in to m: np_height_m
np_height_m = np_height_in * 0.0254
# Print np_height_m
print(np_height_m)

# Baseball player's BMI
'''
Create a numpy array from height_in. Name this new array np_height_in.
Print np_height_in.
Multiply np_height_in with 0.0254 to convert all height measurements from inches to meters. Store the new values in a new array, np_height_m.
Print out np_height_m and check if the output makes sense.
'''

# Import numpy
import numpy as np

# Create array from height_in with metric units: np_height_m
np_height_m = np.array(height_in) * 0.0254

# Create array from weight_lb with metric units: np_weight_kg
np_weight_kg = np.array(weight_lb) * 0.453592

# Calculate the BMI: bmi
bmi = np_weight_kg / np_height_m ** 2

# Print out bmi
print(bmi)

'''
-Create a boolean numpy array: the element of the array should be True 
if the corresponding baseball player's BMI is below 21. You can use the < operator for this. Name the array light.
-Print the array light.
-Print out a numpy array with the BMIs of all baseball players whose BMI is below 21. 
Use light inside square brackets to do a selection on the bmi array.
'''

# Import numpy
import numpy as np

# Calculate the BMI: bmi
np_height_m = np.array(height_in) * 0.0254
np_weight_kg = np.array(weight_lb) * 0.453592
bmi = np_weight_kg / np_height_m ** 2

# Create the light array
light = bmi < 21

# Print out light
print(light)

# Print out BMIs of all baseball players whose BMI is below 21
print(bmi[light])

''''
Subset np_weight_lb by printing out the element at index 50.
Print out a sub-array of np_height_in that contains the elements at index 100 up to and including index 110.
'''

# Import numpy
import numpy as np

# Store weight and height lists as numpy arrays
np_weight_lb = np.array(weight_lb)
np_height_in = np.array(height_in)

# Print out the weight at index 50
print(np_weight_lb[50])

# Print out sub-array of np_height_in: index 100 up to and including index 110
print(np_height_in[100:111])