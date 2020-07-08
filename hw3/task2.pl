min0([X],[X]).
min0([H|T],Min):-
	min0(T,Tmin), Min is min(Tmin, H).