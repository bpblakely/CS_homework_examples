**Task 1**

File used is temp.txt

Input: take input as string. 

Output: should be the line and line number where the string is found

Sample Output:

    Input filename (waiting for user to type in)
    
    temp.txt
    
    1: Check
    
    3: 12312Check1209391023 apsokdpas poask paowkdpa oskdpoask
    

**Task 2**

Didn't print task D since it doesnt tell me to. 

Input: should be a random array of ints.

Output: 

A) print cube of each element in array

B) print array 3 elements at a time like [1,2,3]

C) print integers in A divisible by 5 (if present)

D) not really needed to print

E) prints the result of:

<img src="https://latex.codecogs.com/gif.latex?\prod_{i}^{n}i&space;,\hspace&space;{1mm}\forall&space;n&space;\hspace&space;{1mm}&space;\epsilon&space;\hspace&space;{1mm}&space;A" title="\prod_{i}^{n}i ,\hspace {1mm}\forall n \hspace {1mm} \epsilon \hspace {1mm} A" />
, where A is the random integer array

The sample output is too big for task 2 to really want to include.

**Task 3**

It's clear to see that recursion is slower

Input: nothing

Output: the time it takes to run the fibonacci sequence first as a loop then as recursion

Sample Output:

  0.000000   0.000000   0.000000 (  0.000015)

loop ^ 7 lines of code

  1.140000   0.000000   1.140000 (  1.370021)

recursion ^ 6 lines of code


**Task 4**

Problem didnt specify if you should be able to init tree with hashes and the normal way or just with hashes.
I implemented it such that it only uses hashes. Didn't have access to the book while writing this, so I just implemented my own visit function called traverse

Input: set of {name, hashes} which represent a tree

Output: The names of all nodes

Sample Output: ["grandparent1", "parent1", "child1", "parent2", "child2", "child3", "grandparent2", "parent3", "child4", "parent4", "child5", "child6"]
    
**Task 5**

I'm guessing the default values are as described, but also that they should be parameters for init as well (if wanted)
in the circle and rectangle, the parameter color1 = super(color) is there to either let you use the default color of shape (blue) by default or set your own

Input: Array of size 100, arr, containing randomly generated circle or shape objects.

Output: The result of:

<img src="https://latex.codecogs.com/gif.latex?\sum_{i}^{n}i.area(),&space;\hspace{1mm}&space;\forall&space;n&space;\hspace{1mm}&space;\epsilon&space;\hspace{1mm}&space;arr" title="\sum_{i}^{n}i.area(), \hspace{1mm} \forall n \hspace{1mm} \epsilon \hspace{1mm} arr" />
, where i.area() is the area function of an object

Sample Output: 678.3185307179587


May have gotten carried away with latex...


    