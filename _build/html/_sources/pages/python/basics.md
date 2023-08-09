---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.15.0
kernelspec:
  display_name: 'Python 3.8.9 (''venv'': venv)'
  language: python
  name: python3
---

# Python and Jupyterlab

> Python is a clear and powerful object-oriented programming language. - python doc

> JupyterLab is a flexible, extensible interface for interactive computing. - jupyter doc

[Python](https://www.python.org/) is a simple and most popular programming language and used in many fields like AI and machine learning, Data analytics, Data visualization, Web, Game, and so on.

[JupyterLab](https://jupyterlab.readthedocs.io/en/stable/) is a next-generation web-based user interface for python programming.

Here, you can learn basics of python and usage of JupyterLab. If you have not installed jupyter-lab, refer to [venv](venv).

+++

---
## print() function

`print()` function is the most basic function in python. It is used to print the value of any variable or expression.
Here, we will see how to use `print()` function with the usage of jupyter lab(notebook).

+++

To begin with, let us print string "Hello World" using `print()` function. 
In jupyter lab(notebook), a code block is called a `cell`. A cell can contain multiple lines of code.
To execute the code, click on the cell(colored in blue(jupyter notebook:green)) and press `Shift+Enter` key.

```{code-cell} ipython3
print("Hello, world!")
```

### comment

+++

When programming, we often put some comments to explain the code. In python, we can use `#` to write  comments.

If you want to comment out multiple lines, you can use `""" """` to write comments (actually, this is called docstrings).

```{code-cell} ipython3
# This is a comment. No output.

"""
    This
    is
    a 
    multiline
    comment.
"""
```

### Arithmetic operations

```{code-cell} ipython3
print(1+1)
```

In programming, every object has a data type. For example, the number `1` has the data type `int`.
The "Hello World" string has the data type `str`. If the data types are different, the operations will be performed differently.

For example, `+` operator is used to add two numbers, and `+` operator is used to concatenate two strings.

```{code-cell} ipython3
# you cannot use strings to do math.
print(3+4)
print('3+4')
print('3'+'4')
```

```{code-cell} ipython3
# This will be an error. You can't add a number and a string. 
# You need to convert the string to a number or vice versa.
print(3+'4')
```

```{code-cell} ipython3
a = 3 # This is a variable. 
b = '4'
print(a+b) # This will be the same as the above cell.
```

```{code-cell} ipython3
# print out several inputs with `,`
print(a, b)
```

```{code-cell} ipython3
print(a + int(b)) # This will convert the string to a number.
print(str(a) + b) # This will convert the number to a string.
```

```{code-cell} ipython3
# Basic arithmetic operations
print('addition 1+1 = ', 1+1)
print('subtraction 5-1 = ', 5-1)
print('multiplication 2*2 = ', 2*2)
print('division 5/2 = ', 5/2)
print('modulus 5%2 = ', 5%2)
print('floor division 5//2 = ', 5//2)
print('exponentiation 5**2 = ', 5**2)
```

```{code-cell} ipython3
# Instead of using a new line, you can use a semicolon.
print('adsf'); print('asdf')
```

### jupyter lab usage

+++

Basically, code cells are used to write code. However, we can also use code cells to write comments in markdown format.
If you want to write in markdown format, right click around the cell and press `m`, then `Shift+Enter`. You go back to code format by pressing `y`.
Moreover, you can add a new cell by pressing `a` or `b`(`a` is for above, `b` is for below). 
Others; `x`; cut a cell. `c` (Shift + `c` to copy multi cells); copy a cell. `v`; paste a cell. `z`; undo. 

[Markdown usage](../basic/markdown.md)

+++

---
## Collections(list, tuple, set, dictionary)

List, tuple, set, dictionary are used to store data in different ways.

```{code-cell} ipython3
l = [3,4,5]
index = 0 # index starts with 0
print(l[index])

l[1] = 7 # You can change the value of an element in a list.
print(l)
```

```{code-cell} ipython3
# You can use different types of data in a list.
l = [3,4,5,'a','b','c', True, False, [1,2,3]]
```

```{code-cell} ipython3
t = (3,4,5)

t[2] = 7
# You can't change the value of an element in a tuple.
# However, a tuple uses less memory than a list.
```

```{code-cell} ipython3
s = {3,4,5,5}
print(s)
```

```{code-cell} ipython3
d = {'a':3,'b':4,'c':5}
print(d['a'])

d['a'] = 6 # You can change the value of an element in a dictionary.
d['d'] = 7 # You can add a new key-value pair to a dictionary.
print(d)

print(d.items()) # This will return a list of all the key-value pairs in the dictionary.
print(d.keys()) # This will return a list of all the keys in the dictionary.
print(d.values()) # This will return a list of all the values in the dictionary.
```

---
## Open a file

```{code-cell} ipython3
path = './sample.txt'
with open(path) as f:
    l = f.readlines()
    print(l)
    for i in range(len(l)):
        print(l[i])
```

---
## For loops

`for loop` is used to iterate over a collection of items.

```{code-cell} ipython3
for i in range(5):
    print(i)
# Index starts at 0.
```

```{code-cell} ipython3
for i in range(5,10):
    print(i)
# Index starts at 5.
# cf. range(5,13,2)
```

```{code-cell} ipython3
items = ['a','b','c','d','e']
for i in items:
    print(i)
# You can use a for loop to iterate over a list, tuple, dictionary, string, and so on.

print('-------------------------------')
for i in range(len(items)):
    print(items[i])
```

```{code-cell} ipython3
for i, item in enumerate(items):
    print(i, item)
```

```{code-cell} ipython3
for _ in range(5):
    print('Hello')
```

---
## Comprehension

```{code-cell} ipython3
[i for i in range(5)]
```

```{code-cell} ipython3
data = [3,14,23,28,35,46,55,65,76,87,98,109,120,131,142]
[x*10 for x in data]
```

```{code-cell} ipython3
[x for x in data if x%2==0]
```

```{code-cell} ipython3
[x if x>50 else x*10 for x in data]
```

You can use list comprehension like below but it is not recommended because it is hard to read.

```{code-cell} ipython3
import numpy as np # This is a module. NumPy is a package that contains many useful functions for working with arrays.
a = np.arange(1,51)
fizz_buzz = ['fizzbuzz' if x%3==0 and x%5==0 else 'fizz' if x%3==0 else 'buzz' if x%5==0 else x for x in a]
print(fizz_buzz)
```

---
## Functions

`function` is a block of code which take inputs and returns outputs. It only runs when it is called. 
Actually, most code we write consists of functions.

```{code-cell} ipython3
def print_hello():
    print('Hello, world!')
```

```{code-cell} ipython3
print_hello()
```

```{code-cell} ipython3
def myfunc(arg1, arg2):
    for i in range(arg1):
        print(arg2)

myfunc(3, 'Hello')
# = myfunc(arg1=3, arg2='Hello')
```

```{code-cell} ipython3
import numpy as np # NumPy is a package that contains many useful functions for working with arrays.
import matplotlib.pyplot as plt # Matplotlib is a package that contains many useful functions for plotting.

x = np.linspace(0,10, 100)
y = np.sin(x)

print(x[:5])
print(y[:5])
```

```{code-cell} ipython3
plt.plot(x,y)
plt.title('sin')
plt.show()
```

### lambda functions

+++

$$ f(x) = x^2 $$

```{code-cell} ipython3
f = lambda x: x**2

print(f(3))
```

## Reference
[Python Beginners Guide](https://wiki.python.org/moin/BeginnersGuide/Programmers)
