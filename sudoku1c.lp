% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

value(1..4).

{ sudoku(X,Y,Z) : value(Z) } = 1 :- X = 1..4, Y = 1..4.
sudoku(X,Y,Z) :- initial(X,Y,Z).

:- sudoku(X,Y1,Z), sudoku(X,Y2,Z), Y1 != Y2.
:- sudoku(X1,Y,Z), sudoku(X2,Y,Z), X1 != X2.

subgrid(X, Y, G) :- X = 1..4, Y = 1..4, G = 1 + (((X-1)/2) * 2 + (Y-1)/2).

:- sudoku(X1,Y1,Z), sudoku(X2,Y2,Z), subgrid(X1,Y1,G), subgrid(X2,Y2,G), X1 != X2, Y1 != Y2, Z == Z.

#show sudoku/3.
