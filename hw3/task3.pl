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
	hasDirectConn(A,C), hasConn(C,B).
	