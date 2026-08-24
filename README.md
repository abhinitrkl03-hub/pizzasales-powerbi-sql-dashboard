🍕 Pizza Sales Power BI Dashboard
An end-to-end data analytics project bridging the gap between raw relational databases and strategic business intelligence. This project transforms transactional records into an interactive Power BI dashboard designed to monitor high-level KPIs, uncover temporal trends, and optimize menu performance through evidence-based insights.
📊 Data Visualization & Insights
The dashboard provides a comprehensive analysis of sales performance, customer behavior, and product trends through two main interactive pages:

<img width="1545" height="861" alt="dashboard_home" src="https://github.com/user-attachments/assets/22023f9a-fe2d-4330-919f-2db5c2289021" />
<img width="1547" height="858" alt="dashboard_best worst_sellers" src="https://github.com/user-attachments/assets/5de04284-a386-4bea-b5b7-b412ea5dc351" />

📊 Dashboard Previews
1. Home / Executive Overview
Monitors high-level performance metrics, temporal sales patterns, and category-level distributions.

2. Best & Worst Sellers
Identifies product-level performance to optimize inventory, menu decisions, and profit margins.

📈 Executive Summary & Key Insights
1. Sales Overview & KPIs
Key Metrics: Tracks $817.86K in Total Revenue and 21,350 Total Orders.

Time Trends: Peak orders occur in July and May, with highest activity on weekends and Thursday/Friday evenings.

Top Category: The Classic Category is the primary contributor to total sales and orders.

2. Best & Worst Sellers
Top Performer: The Thai Chicken Pizza leads in revenue contribution.

Volume Leader: The Classic Deluxe Pizza dominates in both quantity sold and total orders.

Low Performer: The Brie Carre Pizza shows the lowest performance across all key metrics.

📖 Project Overview
This project implements a professional Data Analytics Workflow that bridges the gap between raw relational databases and strategic business intelligence. By leveraging SQL Querying for data validation and KPI calculation, the analysis ensures a "Single Source of Truth" before transitioning into Power BI for high-level visual storytelling. This end-to-end approach transforms transactional records into a dynamic decision-making tool, specifically designed to identify operational bottlenecks, optimize menu performance, and drive revenue growth through evidence-based insights.

⚙️ Tools & Technologies Used
SQL Server: Used as the primary relational database for robust data storage and management.

SQL (T-SQL): Utilized to perform data validation and calculate core business KPIs for accuracy.

SQL Server Management Studio (SSMS): GUI for managing and interacting with the database.

Power BI: Employed to build an interactive dashboard for visual storytelling and trend analysis.

Power Query: Used for efficient data transformation and cleaning within the BI environment.

DAX: Applied to create custom measures for advanced analytical calculations and time-series tracking.

🚀 Project Requirements
The business required a comprehensive analysis of pizza sales data to gain actionable insights. The requirements were divided into two main categories:

1. KPI Metrics
The goal was to calculate the following essential business indicators:

Total Revenue: Sum of the total price of all orders.

Average Order Value: Average amount spent per order.

Total Pizzas Sold: Sum of all pizza quantities sold.

Total Orders: Total count of orders placed.

Average Pizzas Per Order: Average number of pizzas sold in each order.

2. Chart & Visualization Requirements
Specific visualizations were required to identify trends and patterns:

Daily & Monthly Trends: Identifying peak periods of high order activity.

Sales Distribution: Percentage of sales segmented by pizza category and size.

Inventory Performance: Comparison of total pizzas sold by category.

Best & Worst Sellers: Top 5 and Bottom 5 pizzas based on revenue, quantity, and total orders.

🔑 Key Features
🔍 SQL-Driven Validation: Implementation of T-SQL queries to ensure 100% data integrity and accuracy of core KPIs.

📊 Dual-Layered Analytics: A strategic two-page interactive dashboard focusing on high-level executive summaries and granular product performance.

📅 Temporal Trend Analysis: Automated identification of peak sales periods, uncovering critical daily and monthly ordering patterns.

🍕 Inventory Optimization: Dynamic ranking systems to isolate the "Top 5" and "Bottom 5" products based on revenue, quantity, and total orders.

💡 Actionable Business Insights: Integrated logic to translate complex pizza sales data into clear strategic recommendations for menu and operations.

🔄 Integrated Analytical Workflow: A professional transition from relational database querying to interactive visual storytelling.

📂 Repository Structure
Plaintext
pizza-sales-powerbi-dashboard/    # Repository Root
│
├── Dashboard/                    # Interactive BI Report file
│   └── Pizza_Sales_Report.pbix   
│
├── dataset/                      # Raw data used for analysis
│   └── pizza_sales.csv           
│
├── docs/                         # Project requirements details & dashboard previews
│   ├── charts_requirements1.png  
│   ├── charts_requirements2.png  
│   ├── dashboard_best&worst_sellers.png
│   ├── dashboard_home.png
│   └── kpis_requirements.png     
│
├── sql-scripts/                  # T-SQL scripts for KPI calculations and data validation
│   └── Pizza_Sales_Queries.sql   
│
├── .gitignore                    # Files and directories to be ignored by Git
└── README.md                     # Project documentation and insights
