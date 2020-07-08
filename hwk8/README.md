**Task 1**

Outputs:


    843908625
    4
    2
    
A. To get the odd numbers from a given X, just take the list of all odd numbers from 1 to x-1. Then map that list to another list by cubing it. Lastly, fold left to compute the product.

B. Using the isLower function from Data.Char we can map isLower to our list of characters to get a boolean list. Then filter is used to filter the cases where it's true (so it is lowercase), then count the length of that resulting list to get the total count of lower case values in the string.

C. Same concept used in B. Create a list by mapping the length of a word of our input list, filter the cases where the values are greater than 4, then count the resulting list to get the total count of strings with length > 4. 


**Task 2**

Outputs:


    (Ten,Spades)
    8
    [(Jack,Hearts),(Ten,Spades),(King,Hearts)]

A. Our input is 2 cards, so we can just take the input as (h:t) and use head t to get the last element. There is a probably a better way to do this. Compare the values of cardValue and use that to return the lowest card.

B. Use map to create a new list of card values then sum that by using fold left.

C. Almost the same thing as part A, this time instead of cardValue we use sumValue (part B) and then return the largest, not smallest. See part A for the explanation of the logic.