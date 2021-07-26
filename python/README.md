## Python

For this part we are using [Pytest](https://pytest.org) as a test driven development framework. Levels are independant, but again do not hesitate to skip if you have difficulties or commit work even if it isn't finished.

To install pytest, type in a terminal:

`pip install pytest`

**Instructions:**
* For each level, make test(s) go green.

### Level P
The Fizzbuzz programm is a classical game with simple rules: you must count from 1 until a given integer. If your integer is a multiple of 3, you must say 'fizz'. If it's a multiple of 5, you must say 'buzz'. For multiples of 3 and 5 you should obviously say 'fizzbuzz'. For any other case, just say the integer.
Implement the `fizzbuzz` function receiving an integer as an argument and following these rules. Your solution must return an array correctly filled. Return an empty array if the given integer is less or equal than 0.

For example:

Given `3` your solution should return `['1', '2', 'fizz']`
Given `15` your solution will return `['1', '2', 'fizz', '4', 'buzz', 'fizz', '7', '8', 'fizz', 'buzz', '11', 'fizz','13','14','fizzbuzz']`
Given `0` your solution will return `[]`

**Instructions:**
* Modify only `main.py`

**Run test:**

``pytest ./level-p/``

### Level Y
A climatologist contacts you to help him compute metadata based on temperatures measured this year. Giving you an array of temperatures, he wants to have the median, the average, min and max temperature of the dataset.

Your function will take as input an array of temperatures and return an array containing the 4 wanted computation wanted : median, average, min and max.

Given `[13, 14]` your function will return `[13.5, 13.5, 13,14]`
Given `[4, 18, 34, 12, 17]` your function will return `[17, 17, 4, 34]`

**Instructions:**
* Modify only `main.py`

**Run test:**

``pytest ./level-y/``

### Level T
Palindromes are strings that can be read either from left to right or right to left indifferently, conditioning the removal of some characters like commas or spaces. Here is a few examples: `kayak`, `tenet`, `Satan, oscillate my metallic sonatas`.

Complete the `is_palindrome` function which receives a string as an argument and returns True if the string is a palindrome or False else.
As we would like to accept sentences, you'll have to check for spaces,

Given `"Kayak"` your function will return `True`  
Given `"Success"` your function will return `False`
Given `"Sator Arepo Tenet Opera Rotas"` your function will return `True`
Given `"Tu l'as trop ecrase Cesar, ce port-salut!"` your function will return `True`

**Instructions:**
* Modify only `main.py`

**Run test:**

``rspec ./level-t/``

### Level H
The city of Democracity decided to organize a participatory budget to encourage citizens to take part to the decision process. A participatory budget  on what projects should be conducted by the city.

Given a list of projects already set, each citizen gives a set of points to each projects. You're working in a famous company which deploys the democracy software that ship this participatory budget, and we ask you know to determine the rankings of the project.

You'll design a function that takes three arguments : the number of participants `n` , the participants'votes `votes`, and the required number of projects `project_range`. A `vote` consist of a tuple with *n* values, each value giving the points given to the concerned project (e.g. (2, 8) means 2 pts for project 1 and 8 points for project 2).

Given these inputs you must return an array of length `project_range` of the most supported projects. If there is no participants or no project will be executed, you should return `No projects, sorry!`

Given `2, [(10,5),(0,3)],2` you should return `[1,2]` as project 1 got 10 + 0 = *10 pts*, project 2 got 5 + 3 = *8 pts*.
Given `3, [(2,3,4),(7,10,2),(0,0,0)], 1` you should return `[2]` as project 2 got 3 + 10+ 0 = *13 pts*.

**Instructions:**
* Modify only `main.py`

**Run test:**

``python ./level-h/``