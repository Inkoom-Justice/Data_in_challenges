# Nonlinear Programming with Solver

In a nonlinear programming problem, the objective and/or some of the constraints are expressed as nonlinear expressions. For example, the variables might be squared or multiplied by each other.

You can use Solver to find optimal solutions to nonlinear programming problems. The process is similar to linear programming, with a few important differences.

## Creating the Spreadsheet Model

Just like with linear programming, your spreadsheet model should include:

- The decision variables
- The objective
- The constraints, often in a table

In addition, create space for the terms of the nonlinear expression in the model. It is good practice to place each term in a separate cell, and use labels and `FORMULATEXT` to indicate their meaning. This makes your spreadsheet easier to read and check for mistakes.

## Using Solver

Set Solver up as you would for a linear programming problem, adding the objective, variables, and constraints.

The one difference is that for "Select a Solving Method," you should choose "GRG Nonlinear." This allows Solver to handle the nonlinear expressions effectively.
