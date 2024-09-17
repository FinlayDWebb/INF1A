# INF1A
Introduction to Computation (Haskell)

## Monday 16th September

Introductory messages, nothing to add, do questions on the Learn

## Tuesday 17th September

FP allows you to work on the data structure as a whole rather than as piecemeal. Making operations quicker than they would be in OOP, operations like ordering an array (or 'list' in Haskell). How similar is it to OCaml?

When defining a new function always first define the type signature. Such as the following:

double :: Picture -> Picture
double p =  beside (Invert P) (flipV P)

which itself is an operation on pictures, specifically relating to the chess pieces from the week 1 tutorial optional questions.
