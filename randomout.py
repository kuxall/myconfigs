from random import randint
n = 1000
print(n)
val = 1000
for i in range(n):
	x1 = randint(-val, val)
	y1 = randint(-val, val)
	x2 = randint(-val, val)
	y2 = randint(-val, val)
	print(x1, y1, x2, y2)
