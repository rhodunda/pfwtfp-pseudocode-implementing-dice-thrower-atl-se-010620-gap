# Pseudocode for Dice Thrower

## Learning Goals

- Design solutions using pseudocode

## Introduction

In the last lab, we created two methods, `throw_die` and `generate_set`,
which allow us to simulate the roll of a single die and create an `Array` of
roll results. With just these two methods, we can simulate rolling dice for
all sorts of board games. Want to play Monopoly with our methods? All we'd need
to do is load up [IRB] in our terminal, paste in our methods and then, whenever
someone takes a turn, write:

```sh
2.5.1 :001 > generate_set(2) # calls throw_die twice and returns an `Array`
=> [1, 4] # you rolled a total of five and landed on Reading Railroad!
```

Our next task is to expand on what we've written. Right now we've got enough
code to play Monopoly and Snakes and Ladders, but with a few more methods, we
could simulate rolling dice for all sorts of games!

In this lesson, we will pseudocode out three new methods that build off of the
`throw_die` and `generate_set` methods in the previous lab.

## Keeping a Roll History

Some dice games involve keeping track of multiple rolls. A game of [Liar's
Dice], for instance, involves all players rolling their own set of five dice,
then hiding the results. Players try to deceive other players about what dice
they've rolled, revealing the results later on. Other games such as [Greed]
involve multiple dice rolls per turn.

If we wanted to expand our dice throwing application to work with these sorts of
games, we will need a way to store results over many rolls.

We _could_ use an `Array` of `Array`s like so:

```ruby
roll_history = []

def add_to_history(roll)
  roll_history << roll
end

add_to_history(generate_set(5))
# => [[3,4,1,3,5]]
add_to_history(generate_set(5))
# => [[3,4,1,3,5], [6,3,2,2,4]]
add_to_history(generate_set(5))
# => [[3,4,1,3,5], [6,3,2,2,4], [1,5,3,4,4]]
```

But after a handful rolls, this could become pretty complicated to access. How
would we store rolls in a `Hash` instead?

In `01_roll_history_pseudocode.html`, pseudocode storing history in a `Hash`.

## Special Roll Conditions

Many dice based games involve 'special' rolls. In Monopoly, if a player rolls
_doubles_, that is, two dice with the same number, the player gets to roll and
additional time. Roll too many doubles, however, and the player goes to jail.

While each game has different rules for what is considered a 'special' roll,
let's focus on a single one for practice: a method that checks if a roll of one
or more dice adds up to `7`. The method should simply return `true` or `false`.

In `02_special_roll_conditions_pseudocode.html`, follow the Flatiron Process
steps and write out the pseudocode for how you would implement this method.

<img src="https://curriculum-content.s3.amazonaws.com/pfwtfp/pfwtfp-pseudocode-implement-dice-thrower/seven.jpg" alt="seven" width="200px"/>

## Multi-Sided Dice

Finally, if we want to build a versatile dice throwing application, we can't
forget our tabletop roleplaying friends! So far, we've focused on six sided
dice, but what if we wanted to set the number of sides on the die that we roll?

<img src="https://curriculum-content.s3.amazonaws.com/pfwtfp/pfwtfp-pseudocode-implement-dice-thrower/polyhedral-dice.jpg" alt="3-sided dice" width="200px"/>

At minimum, a die can
have 3 sides (any fewer and we would be flipping heads or tails):

<img src="https://curriculum-content.s3.amazonaws.com/pfwtfp/pfwtfp-pseudocode-implement-dice-thrower/3-sided-dice.jpg" alt="3-sided dice" width="200px"/>

For simplicity, we will say that at maximum, a single die can have 100 sides:

<img src="https://curriculum-content.s3.amazonaws.com/pfwtfp/pfwtfp-pseudocode-implement-dice-thrower/100-sided-die.png" alt="3-sided dice" width="200px"/>

How would we write a method that allows us to simulate throwing these dice?
In addition, how would we prevent our method from rolling a die that
has less than 3 or more than 100 sides? What should the output be?

In `03_multisided_dice_pseudocode.html`, follow the Flatiron Process steps and
write out the pseudocode for how you would implement this method.

## Submitting This Lab

When you're done providing the pseudocode, you'll need to submit this lab using
`learn submit`. The tests will verify that you've filled out each section.

## Conclusion

In the next lesson, we will be writing the code to implement these methods.
Taking the time to pseudocode ensures that when we get to writing the code
itself, we'll have a clearer idea of how to approach the problem.

[irb]: http://ruby-doc.org/stdlib-2.5.1/libdoc/irb/rdoc/IRB.html
[Liar's Dice]: https://en.wikipedia.org/wiki/Liar%27s_dice
[Greed]: http://thehobbyts.com/greed-dice-game-rules/
