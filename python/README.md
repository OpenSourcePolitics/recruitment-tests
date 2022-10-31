## Python

For this part we are using [Pytest](https://pytest.org) as a test driven development framework. Levels are independant, but again do not hesitate to skip if you have difficulties and **commit and push work even if it isn't finished**.

To install pytest, type in a terminal:

`pip install pytest`

**Instructions:**
* For each level, make test(s) go green.

### Level P
The Fizzbuzz programm is a classical game with simple rules: you must count from 1 until a given integer. If your integer is a multiple of 3, you must say `fizz`. If it's a multiple of 5, you must say `buzz`. For multiples of 3 and 5 you should obviously say `fizzbuzz`. For any other case, just say the integer.

Implement the `fizzbuzz` function receiving an integer as an argument and following these rules. Your solution must return an array correctly filled. Return an empty array if the given integer is less or equal than 0.

#### Examples
- Given `3` your solution should return `['1', '2', 'fizz']`
- Given `15` your solution will return `['1', '2', 'fizz', '4', 'buzz', 'fizz', '7', '8', 'fizz', 'buzz', '11', 'fizz','13','14','fizzbuzz']`
- Given `0` your solution will return `[]`

**Instructions:**
* Modify only `main.py`

**Run test:**

`pytest ./level-p/`

### Level Y
A climatologist contacts you to help him compute metadata based on temperatures measured this year. Giving you an array of temperatures, he wants to have the median, the average, min and max temperature of the dataset.

Your function will take as input an array of temperatures and return an array containing the 4 wanted computation wanted : median, average, min and max. If the length of the dataset is odd, the median will be the average of the two 'central' numbers (e.g median of `[1,2]` is `1.5`). All values should be rounded at 10<sup>-1</sup> (e.g `1.52` will be rounded to `1.5`, `1.67` will be rounded to `1.7`). Consider 

#### Examples
- Given `[13, 14]` your function will return `[13.5, 13.5, 13,14]`
- Given `[4, 18, 34, 12, 17]` your function will return `[17, 17, 4, 34]`
- Given `[78.89]` your function will return `[78.9, 78.9,78.9, 78.9]`

**Instructions:**
* Modify only `main.py`

**Run test:**

``pytest ./level-y/``

### Level T
Palindromes are strings that can be read either from left to right or right to left indifferently, conditioning the removal of some characters like commas or spaces. Here is a few examples: `kayak`, `tenet`, `Satan, oscillate my metallic sonatas`.

Complete the `is_palindrome` function which receives a string as an argument and returns True if the string is a palindrome or False else.
As we would like to accept sentences, you'll have to check for spaces,

#### Examples
- Given `"Kayak"` your function will return `True`  
- Given `"Success"` your function will return `False`
- Given `"Sator Arepo Tenet Opera Rotas"` your function will return `True`
- Given `"Tu l'as trop ecrase Cesar, ce port-salut!"` your function will return `True`

**Instructions:**
* Modify only `main.py`

**Run test:**

`pytest ./level-t/`

### Level H
The town of Democracity decided to organize a participatory budget to encourage citizens to take part to the decision process. A participatory budget is a procedure that help deciding the major what projects should be conducted by the city.

Given a list of projects previously set, each citizen gives points to each projects. You're working in a famous company which deploys the democracy software that ships this participatory budget, and we ask you know to determine the final rankings.

You'll design a function that takes three arguments : 
- the **number** of participants `n`
- the **list** of the participants'votes `votes`.  A `vote` consist of a dictionnary with *n* keys. Each key represent the title of a project, and its value the number of point given by the particpant to the project. As instance if `votes = [{'P1':7},{P1:0}}`, it means there was 2 votes: first one gave 7 pts to the project called `P1`, second one giving 0 pts to the same project.
- a threshold `t` of type **integer** which indicates how much points projects must receive to be realized.


Given these inputs you must return a [set](https://docs.python.org/3/tutorial/datastructures.html#sets) of the projects' title that will be realized. If there is no projects that had more points that the indicated threshold, participants or no project will be executed, you should return an empty set.

#### Examples
- The input `1, [{"Planting trees": 10, "Music festival": 5}], 4` means we have:
    - number of participants = **1**
    - this participant gave 10 poihttps://tutorial.djangogirls.org/nts to the project `Planting trees` and 5 points to the project `Music festival`
    - a project must have at least 4 points to be realized
    - therefore the output of your program should be `{"Planting trees", "Music festival"}` since they both received enough points.
- Given the input `1, [{"Planting trees": 10, "Music festival": 5}], 6`, we should return `{"Planting trees"}` : same input as above, but threshold raised to 5 means the `"Music festival"` cannot be realized
- Given the input `2, [{"Planting trees": 10, "Music festival": 5}, {"Planting trees": 3, "Music festival": 1}], 6`: same as above but with 2 voters. We should return `{"Planting trees", "Music festival"}`, since the first received 10+3 = 13 pts, and the second one 5+1 = 6pts. Having both a number of points greater or equal than the threshold, they'll be realized.
- Given the input `2, [{"Planting trees": 10, "Music festival": 5}, {"Planting trees": 3, "Music festival": 1}], 15`: we should return `{}` since the threshold is so high, that no projects reach it.

**Instructions:**
* Modify only `main.py`
* You might guess that not all cases are covered by the test suite for this exercise. Can you give an example of an input which triggers one of this case ?

**Run test:**

`python ./level-h/`