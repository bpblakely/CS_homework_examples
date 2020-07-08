myDel(A,[],[]).
myDel(A, [A|T], List2):-
	myDel(A,T, List2).
myDel(A,[H|T],[H|Tt]):-
	A \== H,
	myDel(A,T,Tt).

myDelete(A, List1, List2):-
	myDel(A, List1, List2),
	write('give me a filename'), nl,
	read(Filename), 
	open(Filename, write, Stream),
	write(Stream, (List2)),
	close(Stream).