**Task 1**


Output:

    Total # of pages with > 2 images: 7

To get the count of links with more than 2 images on them, I first used map to map either 1 to  the cases where there are more than 2 images or 0 otherwise. Then summing the list
 with reduce will give the total count of links with more than 2 images on it
 
**Task 2**

Output:
        
        3
        2

Needed to add Eq a =>      to the function definition to allow us to compare any types with each other


**Task 3**

[Here is the input to the function ](https://imgur.com/a/gqgYGgl)

The output is clearly 5.

I did not explicity state the input type to the function because the input to the function is only either a subtree or leaf. Those two aliases are what define a tree,
 so it is already implied that the input type can only be a tree.
 
