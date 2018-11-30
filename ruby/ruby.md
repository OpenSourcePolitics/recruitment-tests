## Ruby

For this part we are using Rspec as a test driven development framework.
To install rspec, in the same directory as the Gemfile file, type in a terminal:

`bundle`

**Instructions:** 
* For each level, make test(s) go green. 

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