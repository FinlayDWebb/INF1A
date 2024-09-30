-- We are just going to have rough equations in here, working through some questions. Primarily this GitHub will updated on Mondays, as this is the slot on my Google Calendar.
-- Lets get started.

-- Question 1, Chapter 5. Find a formula to find the point intersection of two lines.
{-# LANGUAGE TemplateHaskell #-}
import GHC.Base (divInt)
import Data.Char (isDigit, digitToInt, toUpper)
import GHC.Unicode (toLower)

type Line = (Float, Float)

intersect :: Line -> Line -> (Float, Float)
intersect (a, b) (a', b') = (x, y)
    where x = (b - b') / (a - a')
          y = a * x + b

-- Question 2, Chapter 5. Using list comprehension, write a function that returns half of each even number in a list.

halveEvens :: [Int] -> [Int]
halveEvens xs = [ divInt x 2 | x <- xs, even x]

-- Question 4, Chapter 5. Using list comprehension, write a function that returns all numbers in the input list that fall within the range given by the first two parameters (inclusive).

inRange :: Int -> Int -> [Int] -> [Int]
inRange x y xs = [ a | a <- xs, a >= x, a <= y ] 

-- Question 5, Chapter 5. Using list comprehension, write a function countPositive to count the number of positive numbers in a list (where 0 is positive).

countPositive :: [Int] -> Int
countPositive xs = sum [ 1 | x <- xs, x >= 0]

-- Question 6, Chapter 5. Using list comprehension write a function multDigits that returns the product of all the digits in the input. If no digits in the string, the function should return a 1.

multDigits :: String -> Int
multDigits str = product [ digitToInt x | x <- str, isDigit x]

-- Question 7, Chapter 5. Using list comprehension, write an improved definition of the function capitalise. Note that it works with the 'map' addition, because this applies it to every element over and over in the section list.

capitalise :: String -> String
capitalise xs = toUpper (head xs) : map toLower (tail xs)

-- Chapter 10, Recursion, Date: 30/09/24

-- Question 1, Chapter 10, Write a function that returns half of each even number in a list.


halveEvensRec :: [Int] -> [Int] 
halveEvensRec [] = []
halveEvensRec (x:xs) 
     | x `mod` 2 == 0 = div x 2 : halveEvensRec xs
     | otherwise = halveEvensRec xs

-- Write a function that returns all numbers in the input list that fall within the range given by the first two parameters.

inRangeRec :: Int -> Int -> [Int] -> [Int] 
inRangeRec a b [] = []
inRangeRec a b (x:xs)
    | a > b = []
    | x >= a && x <= b = x : inRangeRec a b xs
    | otherwise = inRangeRec a b xs
