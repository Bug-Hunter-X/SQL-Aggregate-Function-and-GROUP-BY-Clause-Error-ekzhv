In SQL, a common error is caused by incorrect use of aggregate functions, especially in conjunction with `GROUP BY` clauses.  For example, consider a table named `orders` with columns `customerID`, `orderDate`, and `orderTotal`.  The following query attempts to find the total order value for each customer:

```sql
SELECT customerID, orderDate, SUM(orderTotal) AS totalOrderValue
FROM orders
GROUP BY customerID;
```

This query will produce an error because `orderDate` is not included in the `GROUP BY` clause.  SQL requires that all columns not aggregated be present in the `GROUP BY` clause. The correct query would be either:

```sql
SELECT customerID, SUM(orderTotal) AS totalOrderValue
FROM orders
GROUP BY customerID;
```

or if you want to include `orderDate`:

```sql
SELECT customerID, orderDate, SUM(orderTotal) AS totalOrderValue
FROM orders
GROUP BY customerID, orderDate;
```
The first example sums the `orderTotal` for each `customerID`, ignoring the specific order dates. The second example sums the `orderTotal` for each `customerID` and `orderDate` combination. 