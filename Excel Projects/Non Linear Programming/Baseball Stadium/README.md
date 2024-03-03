# Hot Dog Sales Optimization

In many cases, management has control over the price of a product rather than the quantity sold. In the context of selling hot dogs, price would typically be a natural choice for the decision variable.

However, in this scenario, we have a specific relationship:

\[ p(x) = -0.0001x + 4 \]

Where \( x \) represents the number of hot dogs sold (demand), and \( p \) represents the price. Here, the number of hot dogs sold (\( x \)) serves as the variable. While it's possible to rewrite the equation to express \( x \) as a function of \( p \), it's not recommended due to potential rounding errors. Therefore, we'll use the equation as-is. Let the decision variable be \( x \), representing the number of hot dogs sold. Add this to your spreadsheet model, color-code it green, and assign a dummy value.

## Determining the Objective Function

The objective is to maximize profit, which involves calculating both revenue and cost. Start by creating a formula based on the equation \( p(x) = -0.0001x + 4 \), using the decision variable cell to compute the revenue per hot dog. Multiply this by the number of hot dogs sold to determine the total revenue. Note that the total revenue is the non-linear aspect of this problem.

Next, subtract the costs, including both the fixed cost and the variable cost multiplied by the number of hot dogs sold.

Finally, write the objective function for total profit. You can color-code this cell gray.

## Constraints

This problem does not have any constraints. While this may seem unusual, it's not an issue. Proceed with Solver as usual, omitting any constraints. Select the objective and the decision variable, and then choose "GRG Nonlinear" as your solving method.
