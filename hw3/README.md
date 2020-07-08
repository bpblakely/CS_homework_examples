Task 1: Simple database that just outlines the relation between parents and their children

    ?- parent(mom,son).
    
        true .

    ?- parent(dad,daughter).

        true.

    ?- dad(son,dad).

        false.

    ?- dad(dad,son).
    
        true .

    ?- son(son,dad).

        true .
    
    false output: ?- male(mom).
    
        false.

Task 2: takes a list and returns the min value in the list

    ?- min0([1,2,-100,-1,0],Temp).
    
        Temp = -100 .

    ?- min0([1,2,-100,-100,0],Temp).
    
        Temp = -100 
    
    ?- min0([1,2,3,4,0],Temp).
    
        Temp = 0 .
    
Task 3: Takes 2 cities and checks if there is a connecting flight between them

    ?- hasConn(newOrleans,chicago).

        true .

    ?- hasConn(toledo,chicago).

        true .

    ?- hasConn(houston, chicago).

        true .

    ?- hasConn(chicago, sanFrancisco).

        false.