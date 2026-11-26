heroes([volk,nif,naf,nuf]).
themes([flora,sport,space,fauna]).

left(volk,naf,[volk,naf,_,_]).
left(volk,naf,[_,volk,naf,_]).
left(volk,naf,[_,_,volk,naf]).
left(volk,naf,[naf,_,_,volk]).

opposite(nuf,naf,[nuf,_,naf,_]).
opposite(nuf,naf,[_,nuf,_,naf]).

right(nif,nuf,[nif,nuf,_,_]).
right(nif,nuf,[_,nif,nuf,_]).
right(nif,nuf,[_,_,nif,nuf]).
right(nif,nuf,[nuf,_,_,nif]).

solution(S,T) :-
    heroes(H),
    permutation(H,S),
    left(volk,naf,S),
    opposite(nuf,naf,S),
    themes(Th),
    permutation(Th,T),
    T = [fauna,_,_,space],
    right(nif,nuf,S).




?- solution(S,T).
