-- INSERT INTO customers 
-- (customer_id, customer_name, signup_date, plan_type, monthly_revenue, last_active_date, churned)
-- VALUES
-- (1, 'Rahul Sharma', '2023-01-15', 'Basic', 999, '2023-12-10', 0),
-- (2, 'Neha Verma', '2022-08-05', 'Pro', 1999, '2023-09-01', 1),
-- (3, 'Amit Singh', '2023-05-20', 'Basic', 999, '2023-12-01', 0);

-- Total customerss
-- SELECT count(*) as total_customers
-- from customers;

-- churned customer
-- select count(*) as churned_customers
-- from customers
-- where churned = 1;

-- churn rate
-- SELECT 
--     ROUND(
--         (COUNT(CASE WHEN churned = 1 THEN 1 END) * 100.0) / COUNT(*),
--         2
--     ) AS churn_rate_percentage
-- FROM customers;

-- monthly revenue
-- SELECT 
--     SUM(monthly_revenue) AS total_monthly_revenue
-- FROM customers
-- WHERE churned = 0;

-- revenue lost due to churn
-- SELECT 
--     SUM(monthly_revenue) AS revenue_lost
-- FROM customers
-- WHERE churned = 1;

-- Revenue at risk
-- SELECT 
--     customer_name,
--     monthly_revenue AS revenue_at_risk
-- FROM customers
-- WHERE churned = 1;

-- identify inactive case
-- select customer_name, last_active_date,
-- CAST(julianday('now') - julianday(last_active_date) as INT) as inactive_days
-- from customers
-- where churned=0;

-- revnue at risk
-- SELECT
-- sum(monthly_revenue) as future_revenue_at_risk
-- from customers
-- where churned = 0
-- and (julianday('now') - julianday(last_active_date))>60;

-- view
-- CREATE VIEW churn_risk_view AS
-- SELECT
--     customer_id,
--     customer_name,
--     plan_type,
--     monthly_revenue,
--     churned,
--     CAST(julianday('now') - julianday(last_active_date) AS INT) AS inactive_days,
--     CASE
--         WHEN churned = 1 THEN 'Churned'
--         WHEN (julianday('now') - julianday(last_active_date)) > 60 THEN 'High Risk'
--         ELSE 'Active'
--     END AS churn_status
-- FROM customers;

DROP VIEW IF EXISTS churn_risk_view;

-- CREATE VIEW churn_risk_view AS
-- SELECT
--     customer_id,
--     customer_name,
--     plan_type,
--     monthly_revenue,
--     churned,
--     CAST(julianday('now') - julianday(last_active_date) AS INT) AS inactive_days,
--     CASE
--         WHEN churned = 1 THEN 'Churned'
--         WHEN (julianday('now') - julianday(last_active_date)) > 60 THEN 'High Risk'
--         ELSE 'Active'
--     END AS churn_status
-- FROM customers;

SELECT * from churn_risk_view;