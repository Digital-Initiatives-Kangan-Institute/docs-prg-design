# Introduction to micro:bit with Python

Welcome! In this lesson, you will learn the basics of programming a **BBC micro:bit** using Python.

---

# What is Python and Why Use It?

## What is Python?

Python is a **high-level programming language** that is designed to be:

- Easy to read
- Simple to learn
- Powerful enough to build real applications

Python uses clear, nearly plain-English syntax, which makes it a great language for beginners.

---

## Why Use Python with the micro:bit?

We use Python to program the micro:bit because:

- **Easy to understand**  
  Python code is simple and readable, making it ideal for learning programming concepts.

- **Focus on problem-solving**  
  You can spend more time creating ideas and less time worrying about complicated syntax.

- **Works well with hardware**  
  Python lets you easily control micro:bit features like LEDs, buttons, and sensors.

- **Transferable skill**  
  Python is widely used in real-world fields such as data, web development, and automation.

---

In this course, Python helps you move from simple code to creating interactive and meaningful projects with the micro:bit.
``

## Simulator

You can write and test your code online using the official micro:bit Python editor:

<https://python.microbit.org/v/3>

The simulator lets you:

- Write Python code
- Run your program instantly
- See virtual LEDs, buttons, and sensors in action

---

# Python Syntax: Assignment & Indentation

## 🟰 Assignment

Assignment is used to **store a value in a variable**.

### Example

```python
score = 10
name = "microbit"
```

### Key points

- Use `=` to assign a value
- The value on the right is stored in the variable on the left
- You can change the value later

```python
score = score + 1
```

***

## Indentation

Indentation means **adding spaces at the start of a line**.

In Python, indentation is used to define blocks of code.

***

### Example with a loop (to be covered later in the course)

```python
from microbit import *

while True:
    display.show("Hi")
```

The indented line runs inside the loop.

***

### Example with a condition (to be covered later in the course)

```python
from microbit import *

if button_a.is_pressed():
    display.show("A")
```

The indented line only runs if the condition is true.

***

### Key points

- Indentation is required in Python
- Use consistent spaces (usually 4 spaces)
- Incorrect indentation will cause errors

***

## Variables

Variables are used to **store data** in your program.

Think of a variable as a labelled box that holds a value.

### Example

```python
score = 0
name = "Bob"
temperature = 25
````

### Key points

- Use `=` to assign a value
- Variable names should be meaningful
- Values can change during the program

### Example in micro:bit:

```python
from microbit import *

count = 0

while True:
    display.scroll(count)
    count = count + 1
```

***

## Sensors

The micro:bit has built-in sensors that help it interact with the environment.

### Common sensors

#### Temperature Sensor

Measures the temperature of the device.

```python
from microbit import *

while True:
    temp = temperature()
    display.scroll(temp)
```

***

#### Accelerometer

Detects movement and gestures (e.g. shake, tilt).

```python
from microbit import *

while True:
    if accelerometer.was_gesture("shake"):
        display.show(Image.HAPPY)
```

***

#### Buttons

The micro:bit has two buttons: A and B.

```python
from microbit import *

while True:
    if button_a.is_pressed():
        display.show("A")
    elif button_b.is_pressed():
        display.show("B")
```

---

# Serial Output

## What is Serial Output?

Serial output allows your micro:bit to send data to a computer.

This is useful for:

- Viewing data (e.g. sensor readings)
- Debugging your program
- Recording information for later use

## How It Works

The micro:bit sends data through a USB connection, which can be viewed in the editor’s serial console.

---

## Example

```python
from microbit import *

while True:
    temp = temperature()
    print(temp)
    sleep(1000)
```

This code sends the temperature value to the serial output every second.

***

## Key Points

- Use `print()` to send data
- Data appears in the serial console
- Helpful for testing and debugging programs

***

Tip: Use serial output to check what your program is doing behind the scenes.
