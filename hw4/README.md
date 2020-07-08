**Task 1:**

?- findRoute(toledo, detroit).

toledo--detroit

true .

?- findRoute(toledo, toledo).

false.

?- findRoute(toledo, sanFrancisco).

toledo--detroit--sanFrancisco

true .


**Task 2:**

Query 1

?- myDelete(b,[b,c,d,b,c,b],Res).

give me a filename

|: 'temp.txt'.

Res = [c, d, c] .

(same in file)

Query 2

?- myDelete(c,[b,c,d,b,c,b],Res).

give me a filename

|: 'temp.txt'.

Res = [b, d, b, b] .

(same in file)

**Task 3:**

Normal extension to 9x9 wouldnt work because the algorithm checks way too much information. I extended a sudoku solver in the SWI-Prolog manual.

    ?- sudoku([[8,_,_,_,_,_,_,_,_],
    [_,_, 3,6,_,_,_,_,_], 
    [_,7,_,_,9,_,2,_,_], 
    [_,5,_,_,_,7,_,_,_], 
    [_,_,_,_,6,5,7,_,_], 
    [_,_,_,1,_,_,_,3,_],    
    [_,_,1,_,_,_,_,6,8], 
    [_,_,8,5,_,_,_,1,_], 
    [_,9,_,_,_,_,4,_,_]],S).|    
    S = [[8, 1, 2, 7, 5, 3, 6, 9, 4], [9, 4, 3, 6, 8, 2, 1, 5, 7], [5, 7, 6, 4, 9, 1, 2, 8, 3], [1, 5, 4, 8, 3, 7, 9, 2, 6],
    [3, 8, 9, 2, 6, 5, 7, 4, 1], [2, 6, 7, 1, 4, 9, 8, 3, 5], [7, 3, 1, 9, 2, 4, 5, 6, 8], [4, 2, 8, 5, 7, 6, 3, 1, 9], [6, 9, 5, 3, 1, 8, 4, 7, 2]].

    ?- sudoku([[4,_,_,6,_,2,7,_,_],
    [_,_,6,_,_,5,9,2,_],
    [_,_,8,_,3,_,_,_,1],
    [_,_,_,8,_,4,_,_,3],
    [2,_,3,7,1,_,_,5,_],
    [_,_,_,_,_,_,_,7,4],
    [6,_,9,_,7,_,_,8,_],
    [_,5,_,_,6,_,_,_,_],
    [_,1,_,_,9,3,6,_,_]],S).
    S = [[4, 9, 1, 6, 8, 2, 7, 3, 5], [3, 7, 6, 1, 4, 5, 9, 2, 8], [5, 2, 8, 9, 3, 7, 4, 6, 1], [1, 6, 7, 8, 5, 4, 2, 9, 3], 
    [2, 4, 3, 7, 1, 9, 8, 5, 6], [9, 8, 5, 3, 2, 6, 1, 7, 4], [6, 3, 9, 4, 7, 1, 5, 8, 2], [7, 5, 4, 2, 6, 8, 3, 1, 9], [8, 1, 2, 5, 9, 3, 6, 4, 7]].