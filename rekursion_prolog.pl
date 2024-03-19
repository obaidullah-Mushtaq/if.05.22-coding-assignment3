%Obaidullah Mushtaq
%3CHIF 
%19.03.2024

% Task 1: prepend/3
prepend(E, L, [E|L]).

% ?- prepend(1, [2, 3, 4], Result).
%% Das Ergebnis sollte [1, 2, 3, 4] sein



% Task 2: addElement/3
addElement(E, [], [E]).
addElement(E, [H|T], [H|ExtendedTail]) :- addElement(E, T, ExtendedTail).
% Füge das Element 5 am Ende der Liste [1, 2, 3, 4] hinzu
%?- addElement(5, [1, 2, 3, 4], Result).
% Das Ergebnis sollte [1, 2, 3, 4, 5] sein



% Berechne die Länge der Liste [a, b, c, d]

hasLength([], 0).
hasLength([_|T], N) :- hasLength(T, M), N is M + 1.
hasLength([a, b, c, d], Length).
% Das Ergebnis sollte Length = 4 sein



% Task 4: remove/3
% Entferne das Element 3 aus der Liste [1, 2, 3, 4, 3, 5]

remove(_, [], []).
remove(E, [E|T], T).
remove(E, [H|T], [H|ReducedTail]) :- remove(E, T, ReducedTail).
%remove(3, [1, 2, 3, 4, 3, 5], Result).
% Das Ergebnis sollte [1, 2, 4, 3, 5] sein (das erste Vorkommen von 3 wurde entfernt)
