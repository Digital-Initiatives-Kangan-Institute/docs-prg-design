# Task 6 - Selection

## What does this do?

!!! abstract "Instructions"
    Read the code and guess what will happen. Then run it on the micro:bit and check your answer.

```python
from microbit import *

number = 5

if number > 3:
    display.show(Image.HAPPY)
else:
    display.show(Image.SAD)
```

## Try Different Values

!!! abstract "Instructions"
    Change the value of `number` and observe the result.

## Add More Conditions

!!! abstract "Instructions"
    Add another condition to show a different image if the number is exactly 3.

## Dealing with input

!!! abstract "Instructions"
    Modify the code to read a number from the user using `input()` and display the corresponding image based on the value entered.

## Create a Simple Game

!!! abstract "Instructions"
    Create a simple game where the user has to guess a number between 1 and 100.  Use selection to provide feedback on whether the guess is too low, too high, or correct.  The secret number is 42.

## Expand the Game

!!! abstract "Instructions"
    Make the game better by using the random module to create the secret number.

## Last addition

!!! abstract "Instructions"
    Add a counter to keep track of how many guesses the user has made and display it when they guess the correct number.

