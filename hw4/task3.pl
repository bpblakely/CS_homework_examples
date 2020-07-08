:- use_module(library(clpfd)).

squares([], [], []).       
squares([A,B,C|S1], [D,E,F|S2], [G,H,I|S3]) :-     
  all_distinct([A,B,C,D,E,F,G,H,I]),      
  squares(S1, S2, S3).

sudoku(Puzzle, Solution):-
  Solution = Puzzle,
  append(Solution, Vs), Vs ins 1..9, /* appends numbers 1-9 */
  maplist(all_distinct, Solution), /* maplist true if numbers in rows are all distinct */
  transpose(Solution, Columns), 
  maplist(all_distinct, Columns), /* now checks columns */
  Solution = [A,B,C,D,E,F,G,H,I],
  squares(A, B, C), squares(D, E, F), squares(G, H, I),     
  maplist(label, Solution).