import re
from math import factorial as f
import sys

def calculate_value(replmatchobject):
	pattern = r'(\d*)([PC])(\d*)'
	matchobject = re.search(pattern, replmatchobject.group())
	val1 =  int(matchobject.group(1))
	val2 =  matchobject.group(2)
	val3 =  int(matchobject.group(3))
	result = 0
	if val2 == 'P':
		result = f(val1) // f(val1 - val3)
	else:
		result = f(val1) // (f(val1 - val3) * f(val3))
	return str(result)

expression = ' '.join(sys.argv[1:]).upper()
expression = re.sub('[xX]', '*', expression)
pattern = r'(\d*P\d*|\d*C\d*)'
result = re.sub(pattern, calculate_value, expression)
print(eval(result))
