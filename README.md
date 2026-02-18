
## SQL – Nth Highest Value Using Nested Subqueries

Nth Highest Number + Subquery Concepts Using FROM Keyword in SQL

A pure SQL approach to finding the **Nth highest value** from a table 
without relying on window functions like DENSE_RANK() or LIMIT/OFFSET.

This example finds the **4th highest quantity** from an `Orders` table 
by progressively excluding the top N-1 maximum values using nested 
subqueries combined with UNION.

### How It Works
Each subquery layer removes the current highest value from consideration,
allowing the next MAX() call to return the next distinct highest value.

### Why This Matters
- Works in databases that don't support window functions
- Great for understanding subquery logic and query nesting
- A classic SQL interview problem solved step by step

### Tech
- Pure SQL (compatible with MySQL, SQL Server, and similar)
