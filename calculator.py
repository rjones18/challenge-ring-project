# Open and read file

h = open('test.txt', 'r')

# Reading from the file
content = h.readlines()

# Variable for storing the sum
a = 1

# Iterating through the content of the file
for line in content:
	
	for i in line:
		
		# Checking for the digit in the string
		if i.isdigit() == True:
			
			a += int(i)

# Opens and writes to file
file = open('test.txt', 'w')

# Saves new value in a variable as a string
data = str(a)

# Writing to file
file.write(data)

# Closing file
file.close()