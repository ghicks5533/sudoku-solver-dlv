# Sudoku Solver using DLV (Answer Set Programming)

This project solves standard 9×9 Sudoku puzzles using **Answer Set Programming (ASP)**
with the **DLV solver**. The puzzle is modeled as a constraint satisfaction problem,
where logical rules and constraints define valid solutions.

## Why Answer Set Programming?
Sudoku is naturally suited to declarative problem solving. Instead of writing a
procedural algorithm, the problem is expressed through logical constraints, and
the solver computes valid answer sets that represent completed Sudoku boards.

## Constraints Modeled
- Each cell contains exactly one number from 1–9
- No duplicate numbers in any row
- No duplicate numbers in any column
- No duplicate numbers in any 3×3 subgrid

## Technologies Used
- DLV
- Answer Set Programming (ASP)
- Logic Programming
- Constraint Satisfaction

## Project Structure
sudoku-solver-dlv/
├── sudoku.lp # Core rules and constraints
├── examples/
│ └── puzzle1.lp # Sample Sudoku input

## How to Run
Assuming DLV is installed locally:

bash
dlv sudoku.lp examples/puzzle1.lp

The solver outputs a valid assignment of place(Row, Column, Number) atoms
representing a solved Sudoku board.
