# If
z = 2

if z%2 == 0:  # True
    print('z is even')

# Else
z = 3

if z%2 == 0:  # False
    print('z is even')
else:
    print('z is odd')

# Elif
z = 5

if z%2 == 0:  # False
    print('z is dividable by 2')
elif z%3 == 0:
    print('z is dividable by 3')
else:
    print('Neither')

# Add If

# Define variables
room = "kit"
area = 14.0

# if statement for room
if room == "kit" :
    print("looking around in the kitchen.")

# if statement for area
if area > 15 :
    print("big place!")


# Add Else

# Define variables
room = "kit"
area = 14.0

# if-else construct for room
if room == "kit" :
    print("looking around in the kitchen.")
else :
    print("looking around elsewhere.")

# if-else construct for area
if area > 15 :
    print("big place!")
else:
    print("pretty small.")# Define variables
room = "kit"
area = 14.0

# if-else construct for room
if room == "kit" :
    print("looking around in the kitchen.")
else :
    print("looking around elsewhere.")

# if-else construct for area
if area > 15 :
    print("big place!")
else:
    print("pretty small.")

# Customize further: elif

# Define variables
room = "bed"
area = 14.0

# if-elif-else construct for room
if room == "kit" :
    print("looking around in the kitchen.")
elif room == "bed":
    print("looking around in the bedroom.")
else :
    print("looking around elsewhere.")

# if-elif-else construct for area
if area > 15 :
    print("big place!")
elif area > 10 :
    print( "medium size, nice!")
else :
    print("pretty small.")




