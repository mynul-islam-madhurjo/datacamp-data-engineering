# Builtin Functions

# max() returns the maximum element from a list
height = [1, 2, 3]
print(max(height))

# round() return the  round value with given decimal point
print(round(1.68, 1))  # 1 decimal found
print(round(1.68))  # closest integer
print(help(round))

# for handling types we use type(),  str(), int(), bool() and float()

# Create variables var1 and var2
var1 = [1, 2, 3, 4]
var2 = True

# Print out type of var1
print(type(var1))

# len() return the length of an array
print(len(var1))

# int() Convert data type var2 to an integer: out2
out2 = int(var2)

# pow() Equivalent to base**exp with 2 arguments or base**exp % mod with 3 arguments

print(pow(2, 3))
print(pow(2, 3, 2))  # returns 0 even number

# sorted(____, reverse=____) takes a list and sort them
print(sorted([1, 3, 2]))  # By default reverse is set to False

sorted([1, 3, 2], reverse=True)

# Multiple arguments

# Create lists first and second
first = [11.25, 18.0, 20.0]
second = [10.75, 9.50]

# Paste together first and second: full
full = first + second

# Sort full in descending order: full_sorted
full_sorted = sorted(full, reverse=True)

# Print out full_sorted
print(full_sorted)