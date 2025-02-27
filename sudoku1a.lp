% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

value(1..4).
cell(1..4).

{ sudoku(X,Y,V) : value(V) } = 1 :- cell(X,Y).
sudoku(X,Y,V) :- initial(X,Y,V).

:- sudoku(X,Y1,V), sudoku(X,Y2,V), Y1 != Y2.
:- sudoku(X1,Y,V), sudoku(X2,Y,V), X1 != X2.

#show sudoku/3.

