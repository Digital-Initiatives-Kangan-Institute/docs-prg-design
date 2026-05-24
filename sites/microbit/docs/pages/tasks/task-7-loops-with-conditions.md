# Task 7 - Loops with Conditions

## What does this do?
Read the code and guess what will happen. Then run it on the micro:bit and check your answer.

```python
from microbit import *

for i in range(5):
    if i % 2 == 0:
        display.show(Image.HEART)
    else:
        display.show(Image.HAPPY)
    sleep(500)
    display.clear()
    sleep(200)
```

## Modify the Loop
Change the code to use a different range or condition.