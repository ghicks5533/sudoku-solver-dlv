% =========================
% Sudoku Solver using DLV
% =========================

% -------------------------
% Domain definitions
% -------------------------
grid(1..9, 1..9).
num(1..9).

% -------------------------
% Each cell has exactly one number
% -------------------------
{ place(R, C, N) : num(N) } = 1 :- grid(R, C).

% -------------------------
% Row constraint:
% No duplicate numbers in any row
% -------------------------
:- place(R, C1, N), place(R, C2, N), C1 != C2.

% -------------------------
% Column constraint:
% No duplicate numbers in any column
% -------------------------
:- place(R1, C, N), place(R2, C, N), R1 != R2.

% -------------------------
% 3x3 subgrid constraint:
% No duplicate numbers within each subgrid
% -------------------------
:- place(R1, C1, N),
   place(R2, C2, N),
   R1 != R2,
   C1 != C2,
   (R1 + 2) / 3 = (R2 + 2) / 3,
   (C1 + 2) / 3 = (C2 + 2) / 3.

#show place/3.
