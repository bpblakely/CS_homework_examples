male(dad).
male(son).
female(mom).
female(daughter).
parent(dad,son).
parent(mom,son).
parent(dad,daughter).
parent(mom,daughter).
mom(X,Y):- parent(X,Y), female(X).
dad(X,Y):- parent(X,Y), male(X).
daughter(X,Y):- parent(Y,X), female(X).
son(X,Y):- parent(Y,X), male(X).



