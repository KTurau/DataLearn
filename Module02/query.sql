/*
Overview 

- Total Sales
- Total Profit
- Profit Ratio
- Avg. Discount
*/

SELECT 
	round(SUM(sales), 0) AS Sales,
	round(SUM(profit), 0) AS Profit,
	round(SUM(profit) / SUM(sales), 3) AS Profit_Ratio,
	round(AVG(discount), 3) AS Discount
FROM
	public.orders ord
	LEFT JOIN public.returns ret
	ON ord.order_id = ret.orderid
WHERE ret.orderid IS NULL;

/*
Profit per Order
*/

SELECT 
	order_id,
	round(SUM(profit), 0) AS Profit
FROM public.orders
GROUP BY order_id
ORDER BY Profit DESC;

/*
Sales per Customer
*/

SELECT 
	customer_id,
	customer_name,
	round(SUM(sales), 0) AS Sales
FROM public.orders
GROUP BY customer_id, customer_name
ORDER BY Sales DESC;

/*
Monthly Sales by Segment
*/

SELECT 	
	EXTRACT(YEAR FROM order_date) AS Yeara,
	EXTRACT(MONTH FROM order_date) AS Montha,
	segment AS Segmenta,
	round(SUM(sales), 0) AS Sales
FROM public.orders
GROUP BY 1, 2, 3
ORDER BY 1, 2;

/*
Monthly Sales by Product Category
*/

SELECT 	
	EXTRACT(YEAR FROM order_date) AS Yeara,
	EXTRACT(MONTH FROM order_date) AS Montha,
	category AS Categor,
	round(SUM(sales), 0) AS Sales
FROM public.orders
GROUP BY 1, 2, 3
ORDER BY 1, 2;
