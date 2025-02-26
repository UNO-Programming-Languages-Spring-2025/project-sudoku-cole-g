% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...
num(1..4).
cell(1..4, 1..4).
1 { value(X, Y, Z) : num(Z) } 1 :- cell(X, Y).

:- cell(X, Y1), cell(X, Y2), value(X, Y1, Z), value(X, Y2, Z), Y1 != Y2.
:- cell(X1, Y), cell(X2, Y), value(X1, Y, Z), value(X2, Y, Z), X1 != X2.

#show sudoku/3.
