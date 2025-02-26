% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)


num(1..4).
cell(1..4, 1..4).

{ value(X, Y, Z) : num(Z) } = 1 :- cell(X, Y).

% One number per row and column
:- num(Z), cell(X, Y1), cell(X, Y2), value(X, Y1, Z), value(X, Y2, Z), Y1 != Y2.
:- num(Z), cell(X1, Y), cell(X2, Y), value(X1, Y, Z), value(X2, Y, Z), X1 != X2.

subgrid(X, Y, G) :- cell(X, Y), G = 1 + (((X - 1) / 2) * 2 + (Y - 1) / 2).

% Prevent duplicates in a 2×2 subgrid
:- num(Z), subgrid(X1, Y1, G), subgrid(X2, Y2, G), value(X1, Y1, Z), value(X2, Y2, Z), (X1, Y1) != (X2, Y2).

sudoku(X, Y, Z) :- value(X, Y, Z).
#show sudoku/3.
