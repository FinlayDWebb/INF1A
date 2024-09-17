# INF1A
Introduction to Computation (Haskell)

## Monday 16th September

Introductory messages, nothing to add, do questions on the Learn

## Tuesday 17th September

FP allows you to work on the data structure as a whole rather than as piecemeal. Making operations quicker than they would be in OOP, operations like ordering an array (or 'list' in Haskell). How similar is it to OCaml?

* When defining a new function always first define the type signature. Such as the following:

    double :: Picture -> Picture
    double p =  beside (Invert P) (flipV P)

    which itself is an operation on pictures, specifically relating to the chess pieces from the week 1 tutorial optional questions. Refer to Tutorial1.hs within the INF1A folder (not the GitHub one) to see some examples of functions implemented.

*  Note that some functions are associative so that the syntax of the input order doesn't matter. Example:

    triple :: Picture -> Picture
    triple p = beside (beside p p) p
    triple p = beside p (beside p p)

    these two bottom lines are the same.

* The entry after the function, is called the 'formal parameter', the variable within the defined function is called the 'actual parameter'. The entire line is called the 'function definition'.

* We can define a new type also, this will be covered in the CL lectures. But is a similar thing to a function.

* A key idea from Haskell is not to assign values to variables, but to instead just use functions.
