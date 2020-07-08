hasDirectConn(newOrleans, chicago). 
hasDirectConn(philadelphia, newOrleans). 
hasDirectConn(columbus, philadelphia). 
hasDirectConn(sanFrancisco, columbus). 
hasDirectConn(detroit, sanFrancisco). 
hasDirectConn(toledo, detroit). 
hasDirectConn(houston, sanFrancisco).

hasConn(A,B):-
	hasDirectConn(A,B).
hasConn(A,B):-
	hasDirectConn(A,C),
	hasConn(C,B).

hasConnPrint(A,B):-
	hasDirectConn(A,B),write(A),write('--'),write(B).
hasConnPrint(A,B):-
	hasDirectConn(A,C),
	hasConnPrint(C,B).

findRoute(A,B):-
	hasDirectConn(A,B),
	write(A),write('--'),write(B).
findRoute(A,B):-
	hasConn(A,B),write(A), write('--'),hasConnPrint(A,B).