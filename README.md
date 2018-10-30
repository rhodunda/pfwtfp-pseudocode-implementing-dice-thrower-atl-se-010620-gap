# Pseudocode for Dice Thrower

## Learning Goals

- Create code from pseudocode

## Introduction

In the previous lesson, we created two methods, `throw-die` and `generate_set`,
which allow us to simulate the roll of a single die and create an array of
roll results.

Our next task is to start expanding on what we've written. First, we'd like to
be able to set the number of sides on the die that we roll.

At minimum, a die can
have 4 sides:

![4-sided die](https://curriculum-content.s3.amazonaws.com/pfwtfp/pfwtfp-pseudocode-implement-dice-thrower/4-sided-die.png)

And at maximum, 100 sides:

![100-sided die](https://curriculum-content.s3.amazonaws.com/pfwtfp/pfwtfp-pseudocode-implement-dice-thrower/100-sided-die.png)

We'd also like to have some way to prevent our program from rolling a die that
has less than 4 sides or more than 100, prompting the user to re-enter a number
if invalid.

In most dice games, players roll more than one die at a time. In the previous
lesson, `generate_set` allowed us simulate this by storing multiple results in
an array. If we wanted to simulate rolling _two_ 6-sided die, we just call
`throw_die` twice and store both results in one array. What about multiple
rolls, though? We also need a way to store results over time. While an array
of arrays would work, a _hash_ of generated sets would be a bit clearer.

Finally, we want to start writing some sort of special condition - a way to
check if one or more rolls meets the criteria we set. Lets say for now that we
want to check if the last roll adds up to `7`.

Before we get to writing code, lets apply the Flatiron process and pseudocode
what we need to do for implementing the conditions above. That way, when we get
to writing the code itself, we'll have a clearer idea of what to write and how
to structure our code. Keep in mind, this is _pseudocode_: do not use Ruby
built-in functions.

## Create Code from Pseudocode

Perform the steps in the Flatiron process and document them in the file
`pseudocode.html`.

We've included the steps for you. Simply locate the text
`Replace this text with your response`. Delete it and enter your text for that
particular section.

For example:

![Sample response](https://curriculum-content.s3.amazonaws.com/pfwtfp/pfwtfp-pseudocode-average-an-array-lab/sample.png)

## Submitting This Lab

When you're done providing the pseudocode, you'll need to submit this lab using
`learn submit`. The tests will verify that you've filled out each section.

## Conclusion

With your pseudocode in place, you're ready to code the implementation of dice
thrower. In the next lesson, try to get everything working the very first time.
Pseudocoding takes the variability out of _encoding_ ideas in programming
languages.
