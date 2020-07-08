**task 1**
    
Output   

        1035.6990515543707
        
This is a simple program. It first creates a list of random shapes by getting a 0 or 1 randomly and creates the shape based of the result
        
The parameters of the shape (length, width) and (radius) are also generated randomly. The end result is a the sum of their areas. 
        
Random comment: I think its dumb that you cant reduce the code inside the foreach loop (summing loop) to one line
        
**task 2**
    
Output   

        Enter webpage: https://about.gitlab.com/
        Image count: 109
        Script count: 19
        Total # of images on all pages x and y: 66
        Total # of pages with > 2 images: 7
        1061 miliseconds with par       count= 66
        4483 miliseconds without par    count= 66
    
Problem 1 is straight forward. Problem 2 and 3 were done in the same function since you only need to add 1 variable and if statement to problem 2 to complete problem 3.

Problem 4 is kind of tricky since it crashes frequently. For problems using the webpage "https://about.gitlab.com/" there is a chance the program will crash.
This is because one of the redirecting links on the page goes to the new gitlab posts page and it seems like there are a lot of broken links on that page, which when
accessed will crash the program. 

If the last problem has 2 different counts (typically only off by 1 or 2) it is the result of the same new projects page. Since they are accessed at a different time it 
is likely that different projects and users cause the count to be off.

The try catch statement in task d is to prevent the random crashes caused by bad links. 

**task 3**

Output

        List(gep, la, dub, yllek, tset)
        150
        
Very simple task, both problems can be solved in 1 line and I don't think I need to explain anything about this one.        