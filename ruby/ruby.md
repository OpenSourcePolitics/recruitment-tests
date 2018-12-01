## Ruby

For this part we are using Rspec as a test driven development framework.
To install rspec, in the same directory as the Gemfile file, type in a terminal:

`bundle`

**Instructions:** 
* For each level, make test(s) go green. 

### Level O
Given an array of integers and a sortable order string; your solution should find the smallest integer if the sortable order string is equal to "min" and the highest integer if the sortable order string is equal to "max". It should return an the input array if input string is equal to another value. 

For example:

Given [34, 15, 88, 2], "min" your solution will return 2
Given [34, -345, -1, 100], "min" your solution will return -345

Given [34, 15, 88, 2], "max" your solution will return 88
Given [34, -345, -1, 100], "max" your solution will return 100

Given [34, 15, 88, 2], "anything else" your solution will return [34, 15, 88, 2]
Given [34, -345, -1, 100], "anything else" your solution will return [34, -345, -1, 100]

For this level, you must consider the input array as a one-dimensional array.

**Instructions:** 
* Modify only main.rb

**Run test:**

``rspec ./level-o/main_spec.rb --format doc``

### Level A
The mathematician Leonardo Fibonacci posed the following problem in his essay Liber Abaci: 
"How many pairs of rabbits will have been produced in one year, starting from a single pair, if each month, each pair procreates a new pair that will become capable of breeding from the following month?"

Design a ruby program that implements the fibonacci suite.

**Instructions:** 
* Modify only main.rb

**Run test:**

``rspec ./level-a/main_spec.rb --format doc``

### Level F
ROT13 is a simple letter substitution cipher that replaces a letter with the letter 13 letters after it in the alphabet. ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string ciphered with Rot13. If there are numbers or special characters included in the string, they should be returned as they are. Only letters from the latin/english alphabet should be shifted, like in the original Rot13 "implementation".

**Instructions:** 
* Modify only main.rb

**Run test:**

``rspec ./level-f/main_spec.rb --format doc``

### Level X
We are building a peer-to-peer car rental service. Let's call it Drivy :)

Here is our plan:

Let any car owner list her car on our platform
Let any person (let's call him 'driver') book a car for given dates/distance

The car owner chooses a price per day and price per km for her car. The driver then books the car for a given period and an approximate distance.

The rental price is the sum of:

A time component: the number of rental days multiplied by the car's price per day
A distance component: the number of km multiplied by the car's price per km.

**Instructions:** 
* Modify only main.rb

**Run test:**

``rspec ./level-x/main_spec.rb --format doc``