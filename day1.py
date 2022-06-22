print('Hello World')
# variable name cannot start with a number
num1 = 15
# variable cannot have a space
first_name = 'Simeon'
num = 12.5
NUM = 13.5
# variable naming cannot have any special character
# variable naming is case sensitive
print(num1)
#declear a variable number1 to hold any integer value
#declear a variable number2 to hold any floating value
#declear a variable firstname, secondname to hold any string value
#declear a variable X to hold any Boolean value
#you display the variable one after the other
y = True

word = 'we\'re brothers from the other side of the town' # Backward slash denotes the escape character
print(word)

word2 = 'variable name cannot start with a number\nvariable cannot have a space\nvariable naming cannot have any special character'
print(word2)
print('\n')
word3 = '''variable name cannot start with a number
variable cannot have a space
variable naming cannot have any special character
'''
print(word3)

#String concatenation
print('Hello' + ' '+ 'World')# joining of string and string
print('Hello', first_name)
score1 = 75
score2 = 90
score3 = 85

report = 'Ade pass mark in math is {}, {} in english and {} in chemistry'
print(report.format(score1,score2,score3))
print('\n')
print(f'Ade pass mark in math is {score1}, {score3} in english and {score2} in chemistry')

word1 ='python'
word2 = 'PYTHON'
word3 = 'python is fun'
word4 = '  info@gmail.com'
print(word1.upper())
print(word2.lower())
print(word3.title())
print(word3.capitalize())
print(word3.split())
print(word4.strip())



