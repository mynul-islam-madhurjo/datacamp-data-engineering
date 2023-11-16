# Methods are functions that belong to object
# Everything in python is object

fam = [1, 2, 3, 4, 1]

print(fam.index(1))
print(fam.count(1))

sister = 'Liz'

print(sister.capitalize())
print(sister.replace('z', 'sa'))

# Some methods change object called upon
fam.append(5)  #  int to list
print(fam)
