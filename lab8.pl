% TASK1
% (A AND B) OR (NOT A AND NOT B)

% AND truth table
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR truth table
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% Negation
neg(true, false).
neg(false, true).

% logicGate(A, B, Output)
% Four gates: two ands, two negs, one or
logicGate(A, B, O) :-
    neg(A, NA),
    neg(B, NB),
    and(A, B, X),
    and(NA, NB, Y),
    or(X, Y, O).


% TASK3
total_average :-
    write('Enter the first number: '),
    read(A),
    write('Enter the second number: '),
    read(B),
    write('Enter the third number: '),
    read(C),
    Total is A + B + C,
    Average is Total / 3,
    write('Total = '),
    write(Total),
    nl,
    write('Average = '),
    write(Average),
    nl.
