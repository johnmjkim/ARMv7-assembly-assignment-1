---
title: "COMP2300 Assignment 1 Design Document"
author: John (Min Jae), Kim
email: johnmjkim1216@gmail.com
---

# What : Waterdrop, Wave and Reflection

The board uses led to express water drop, wave created by water drop and reflection of wave by front wall. The show is divided into a total of five different stages as in the Figure.1 below. Each stages are divided and executed at the different branches.

[Figure.1 Raindrops](/assets/raindrops_image.png)

# How : LED Light On and Off with ARM-v7 Assembly

The project contains custom libraries like “led.S”, “timer.S” and etc. Each role of libraries are organised as in the Figure.2 below.

Figure.2
(image of a table which describes each library)

Each library basically contains functions which use a load-twiddle-store pattern. It loads the address of a certain pin, executes a necessary calculation and stores the bit data into the address again. In this process, custom functions are created to execute load-twiddle-store patterns, such as “led_setdir”, “led_cleardir”, “led_on”, “led_off” and etc.

Data arrays such as pin map address and time amount, are also included in each library. Pin map address data array is used to get the address of GPIO. The corresponding address of the pin can also be found in Figure.3. The pin address of microbit is shared in [this document](https://tech.microbit.org/hardware/schematic/#v2-pinmap)


# Why : Library, Function and Data Array

Functions are set global only if those are used in “main.S”. This makes sure the encapsulation of functions in the library and allows better code maintenance.


consultation notes
1. read this in detail
https://comp.anu.edu.au/courses/comp2300/resources/design-document/

2. focus more on "Implementation & Analysis" than "Design"

3. Diagram is not counted on words. Use them.

4. 
e.g. implementation : I used array to store data ..... 
e.g. analysis : stroing data is better for me than hard coding because .....