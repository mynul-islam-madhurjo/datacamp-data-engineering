# for var in seq:
#     expression

heights = [1,2,3]

for height in heights:
    print(height)

# with index
for index, height in enumerate(heights):
    print(index,height)

for char in 'familly':
    print(char.capitalize())

# Loop over a list

# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Code the for loop
for i in areas:
    print(i)

# Indexes and values (1)

# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Change for loop to use enumerate() and update print()
for x,y in enumerate(areas):
    print("room {}: {}".format(x, y))

# Indexes and values(2)

# areas list
areas = [11.25, 18.0, 20.0, 10.75, 9.50]

# Code the for loop
for index, area in enumerate(areas) :
    print("room " + str(index+1) + ": " + str(area))

# Loop over list of lists

# house list of lists
house = [["hallway", 11.25],
         ["kitchen", 18.0],
         ["living room", 20.0],
         ["bedroom", 10.75],
         ["bathroom", 9.50]]

# Build a for loop from scratch

for data in house:
    print('the {} is {} sqm'.format(data[0], data[1]))


# Loop on dictionary

# for key, value in seq.items():
#     print(key,value)

# Definition of dictionary
europe = {'spain': 'madrid', 'france': 'paris', 'germany': 'berlin',
          'norway': 'oslo', 'italy': 'rome', 'poland': 'warsaw', 'austria': 'vienna'}

# Iterate over europe
for key, value in europe.items():
    print("the capital of {} is {}".format(key, value))






















