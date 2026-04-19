# Python Functions
Functions are a core concept of programming. Functions allow us to group code together and tag that code with a name. This allows us to reuse code and avoid repeating ourselves.

Functions also break up our code into smaller, more manageable pieces. This is important for debugging and testing. Functions also allow us to create libraries of code that we can use in other programs. This is important for sharing code and collaborating with others. It can be useful to think of functions as mini-programs that we can call from of main program when we need them.

## Calling a Function
We can then **call** that function. Calling a function means executing the code that was grouped together. Importantly, we can call the same function many times.

We have already used functions previously. For example, the `Ed.Drive()` function is a built-in function. Python has already grouped together or, **defined**, the code that prints to the screen. We then call the `Ed.Drive()` function thus executing some predefined code.

Notice that `Ed.Drive()` has brackets/parenthesis `()` after it. This part of the syntax of calling a function. The brackets are used to pass in any information that the function needs to do its job. For example, the `Ed.Drive()` function needs to know; type of movement, speed and amount. We can pass this information in as follows:

```py
Ed.Drive(Ed.SPIN_RIGHT, Ed.SPEED_5, 90) 
```

What are some other built-in functions? That we have used?

## Defining a Function
We can also define our own functions. This is done using the def keyword. Like other control structures in Python, we add a colon : to the end of the line and indented lines below belong to the structure. The syntax is as follows:

```py
def function_name(): 
    # code to be executed 
```

The function_name is the name we want to give our function and, therefore, what we call it by. A function name should describe the purpose of the function. The code that is indented below the function name is the code that will be executed when we call the function.

```py
import Ed

Ed.EdisonVersion = Ed.V3

Ed.DistanceUnits = Ed.CM
Ed.Tempo = Ed.TEMPO_MEDIUM
#--------Your code below-----------

# spins to the left 90deg and then to the right 90deg
def small_dance(): 
  Ed.Drive(Ed.SPIN_LEFT, Ed.SPEED_5, 90) 
  Ed.Drive(Ed.SPIN_RIGHT, Ed.SPEED_5, 90)
  Ed.Drive(Ed.SPIN_LEFT, Ed.SPEED_5, 180)
  Ed.Drive(Ed.SPIN_RIGHT, Ed.SPEED_5, 180)     

# moves forward 10cm 
def forward_10():  
  Ed.Drive(Ed.FORWARD, Ed.SPEED_5, 10) 

small_dance()
forward_10()
small_dance()
```

To call the above functions, we simply use the function name followed by brackets:

```py
small_dance() 

forward_10() 

small_dance()
```

Functions can be called multiple times which saves a us replicating the code used every time the function is called. In the above the Edison will do `small_dance()` twice, but the code for `small_dance()` only needs to written once (`lines 11–14`).

Does a function need to be defined before it is called? Why?

[Attempt Task 3](../tasks/task-3-functions.md){ .md-button }

## Parameters
Functions can also take in information. This is done by adding parameters to the function definition. Think of parameters as the inputs to our mini-programs. Parameters are variables that are passed into the function when it is called. This allows us to make our functions more flexible and reusable. The syntax for adding parameters is as follows:

```py
def function_name(parameter1, parameter2): 
    # code to be executed
```

The parameters are separated by commas. We can then use these parameters in the code that is executed when the function is called. For example:

```py
# moves forward by amount in cm
def forward(amount):
  Ed.Drive(Ed.FORWARD, Ed.SPEED_5, amount) 

# spins to the left and then to the right by left_amount and right_amount respectively
def small_dance(left_amount, right_amount): 
  Ed.Drive(Ed.SPIN_LEFT, Ed.SPEED_5, left_amount) 
  Ed.Drive(Ed.SPIN_RIGHT, Ed.SPEED_5, right_amount)
 
forward(20)
forward(12)
small_dance(180, 180)
small_dance(180, 360)
```

[Attempt Task 4](../tasks/task-4-functions-params-returns.md){ .md-button }

## Output - Returning Values
Just like a program a function can have an output. This is done using the **return** keyword. The **return** keyword is used to output a value from a function. This can be thought of as a signal or message being sent back to where the function was called. 

This allows us to use or store the result of a function to use later.  

An example of this in a pre-built function is the `Ed.ReadKeypad()` function. `Ed.ReadKeypad()` detects if any buttons on the Edison are pressed. It returns a key value if something is pressed or `NONE` if nothing is pressed. For example: 

The **return** keyword is used to output a value from a function. This allows us to use or store the result of a function to use later. For example:

```py
import Ed

Ed.EdisonVersion = Ed.V3

Ed.DistanceUnits = Ed.CM
Ed.Tempo = Ed.TEMPO_MEDIUM
#--------Your code below-----------

while True:
    if Ed.ReadKeypad() == Ed.KEYPAD_ROUND:
        Ed.PlayBeep()
```

This will play a beep when the round button on the Edison is pressed. Don't worry about the syntax and how it does it, we'll revisit that at a later date.

What's important here is that on `line 11`, `Ed.ReadKeypad()` returns a value, if the value is `Ed.KEYPAD_ROUND`, we then make a decision to play a beep sound.

We can also make our custom functions return values. This is useful if we need calculations done and want the result. For example, from a previous example:

```py
import Ed

Ed.EdisonVersion = Ed.V3

Ed.DistanceUnits = Ed.CM
Ed.Tempo = Ed.TEMPO_MEDIUM
#--------Your code below-----------

length_1 = 12
length_2 = 3
length_3 = length_1 + length_2

Ed.Drive(Ed.FORWARD, Ed.SPEED_5, length_1)
Ed.TimeWait(length_2, Ed.TIME_SECONDS)
Ed.Drive(Ed.FORWARD, Ed.SPEED_5, length_2)
Ed.TimeWait(length_2, Ed.TIME_SECONDS)
Ed.Drive(Ed.FORWARD, Ed.SPEED_5, length_3)
```

We can obtain `length_3` by using a function rather than just adding `length_1` and `length_2` on `line 11`:

```py
import Ed

Ed.EdisonVersion = Ed.V3

Ed.DistanceUnits = Ed.CM
Ed.Tempo = Ed.TEMPO_MEDIUM
#--------Your code below-----------
def add_nums(a, b):
  return a + b
    
length_1 = 12
length_2 = 3
length_3 = add_nums(length_1, length_2)

Ed.Drive(Ed.FORWARD, Ed.SPEED_5, length_1)
Ed.TimeWait(length_2, Ed.TIME_SECONDS)
Ed.Drive(Ed.FORWARD, Ed.SPEED_5, length_2)
Ed.TimeWait(length_2, Ed.TIME_SECONDS)
Ed.Drive(Ed.FORWARD, Ed.SPEED_5, length_3)
```

