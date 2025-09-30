:- use_module(library('lists')).
connectedViaGenome(A,B) :-
    breakend(C,P,A,_,false,true),
    breakend(C,Q,B,_,true,false),
    P < Q,
    Q-P < 1000000.

connected(A, B, Acc, [B, A|Acc]) :- !,breakend(_, _, A, B, _, _); connectedViaGenome(A, B); connectedViaGenome(B,A).
connected(A, B, Acc, Path) :-
    breakend(_, _, A, C, _, _),
    \+ memberchk(C, Acc),
    connected(C, B, [A|Acc], Path).

main :-
    breakend(C, P, A, AA, _, _),
    breakend(C, Q, B, BB, _, _),
    connectedViaGenome(A, B),
    connected(AA, BB, [A, B, AA, BB], _),
    write((C,P,Q)),
    nl,
    false.
main.
