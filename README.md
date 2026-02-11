## Table of Contents
- [1. Title](#1-title)
- [2. Project Overview / Problem Statement](#2-project-overview--problem-statement)
- [3. Data Sources](#3-data-sources)
- [4. Tools](#4-tools)
- [5. Data Cleaning](#5-data-cleaning)
- [6. Exploratory Data Analysis](#6-exploratory-data-analysis)
- [7. Data Analysis](#7-data-analysis)
- [8. Results](#8-results)
- [9. Recommendations](#9-recommendations)
- [10. Limitations](#10-limitations)

# The Bike Haven Sales Dashboard
--- 
## 1. Title
**The Bike Haven - Interactive Sales Analytics Dashboard**

A comprehensive business intelligence solution for tracking sales performance, customer behavior, and product insights for a bike retail business.

---
## 2. Project Overview / Problem Statement
The Bike Haven is a bike shop in San Francisco that sells bikes, clothing, accessories, and components. The sales manager, Chris, needed to move from static reports to interactive dashboards to better understand sales performance across products, customers, and regions.

**Key Business Questions:**
- Which products generate the most revenue?
- Who are the most valuable customers?
- How do actual sales compare to budget targets?
- Which regions and cities drive the most sales?
- How are different product categories performing?

The goal was to create a visually interactive dashboard that works across devices (laptop, tablet, mobile) and helps identify trends, opportunities, and areas needing attention.

---

## 3. Data Sources

The project uses data from **7 database tables** plus an external budget file:

| Source | Description |
|--------|-------------|
| `customer` | Customer demographics and details |
| `date` | Date dimensions (day, month, year, quarter, etc.) |
| `geography` | Location data (city, state, province) |
| `internetsales` | Core sales transactions |
| `product` | Product details and attributes |
| `productcategory` | Main product categories |
| `productsubcategory` | Subcategory classifications |
| `SalesBudget.csv` | Monthly budget targets for comparison |

---

## 4. Tools

| Tool | Purpose |
|------|---------|
| **PostgreSQL** | Database management and data cleaning |
| **SQL** | Data extraction, joining, and transformation |
| **Tableau** | Data visualization and dashboard creation |
| **pgAdmin** | Database administration and query execution |

---

## 5. Data Cleaning 
The following SQL steps were performed to prepare the data:
- Joined Product, Product Subcategory, and Product Category tables
- Joined Customer and Geography tables
- Joined Internet Sales with Customer, Geography, and Date tables
- Merged SalesBudget data for budget vs. actual comparison
- Removed unnecessary columns and formatted dates for Tableau

## 6. Exploratory Data Analysis

Before building the dashboard, I explored the data to understand:

- **Product Range:** 130 different products across Bikes, Accessories, and Clothing categories
- **Customer Base:** Individual customers with demographic and geographic details
- **Sales Timeline:** Data spanning multiple years (2019-2023)
- **Geographic Spread:** Sales across multiple US states
- **Budget Comparison:** Monthly budget figures to compare against actual sales

Key findings from exploration:
- Bikes category dominates sales volume
- Mountain bikes and Road bikes are top performers
- Customer concentration varies by region
- Sales show seasonal patterns and year-over-year growth

---

## 7. Data Analysis

The Tableau dashboard includes **5 required visualizations** plus additional insights:

### 7.1 Top 10 Products by Sales Amount
- **Chart Type:** Horizontal bar chart
- **Purpose:** Shows which products generate the most revenue
- **Key Insight:** Mountain-200 models (Black and Silver variants) are the top revenue generators, followed by Road-150 models
  <img width="588" height="244" alt="Top ten sales amount" src="https://github.com/user-attachments/assets/3669f57d-4f34-4baf-8225-167a87c2e6db" />


### 7.2 Top 10 Customers
- **Chart Type:** Horizontal bar chart
- **Purpose:** Identifies most valuable customers for relationship building
- **Key Insight:** Jordan Turner is the highest value customer, followed by Willie Xu and Nichole Nara

### 7.3 Sales Figures by Region/City
- **Chart Type:** Map visualization
- **Purpose:** Geographic distribution of sales across US states
- **Key Insight:** California shows highest sales concentration (blue color), with strong performance in Washington and Oregon

### 7.4 Product Categories vs Sales Amount
- **Chart Type:** Stacked bar chart
- **Purpose:** Compares performance across Accessories, Bikes, and Clothing
- **Key Insight:** 
  - Bikes: ~1.36B total (Road Bikes: ~697M, Mountain Bikes: ~478M, Touring Bikes: ~185M)
  - Accessories and Clothing show significantly lower sales volumes

### 7.5 Sales Figures vs Budget
- **Chart Type:** Dual-axis line chart
- **Purpose:** Compares actual sales against budgeted targets over time
- **Key Insight:** 
  - Sales exceeded budget significantly in 2022 (peak ~800M)
  - 2020-2021 showed steady growth
  - 2023 shows decline, matching budget expectations

### 7.6 Additional Dashboard Features
- Interactive filters for sales representatives to filter by customers and products
- Responsive design for multiple devices
- Clean, user-friendly layout in A4 portrait format

---

## 8. Results

The dashboard successfully provides:

- **Clear Product Insights:** Mountain-200 Black 46 and 42 are the top revenue products  
- **Customer Segmentation:** Top 10 customers identified for targeted marketing  
-  **Budget Tracking:** Visual comparison showing 2022 as the strongest performance year  
- **Geographic Intelligence:** California, Washington, and Oregon are key markets  
- **Category Performance:** Bikes category drives ~95% of total revenue  
- **Interactive Functionality:** Filters allow drill-down by customer, product, and time period  

**Business Impact:**
- Chris can now quickly identify underperforming products and regions
- Sales team can focus on high-value customers
- Budget variance analysis helps in financial planning
- Mobile accessibility enables decision-making on the go

---

## 9. Recommendations

Based on the dashboard analysis, I recommend:

1. **Product Strategy:**
   - Increase inventory for Mountain-200 and Road-150 models
   - Investigate why Touring Bikes have lower sales compared to Mountain and Road bikes
   - Consider expanding the high-performing product lines

2. **Customer Focus:**
   - Develop loyalty programs for top 10 customers like Jordan Turner
   - Analyze what makes high-value customers different and replicate that success
   - Provide personalized service to retain top customers

3. **Regional Expansion:**
   - Investigate expansion opportunities in high-performing states (California, Washington)
   - Analyze why some states show lower sales and develop targeted campaigns
   - Consider physical store expansion or targeted marketing in top regions

4. **Budget Planning:**
   - 2022 performance shows the business can exceed targets significantly
   - Review 2023 budget targets as they appear conservative compared to potential
   - Use historical data to set more aggressive but realistic goals

5. **Category Management:**
   - While Bikes dominate, explore growth opportunities in Accessories and Clothing
   - These categories might need better marketing or product mix adjustments

---

## 10. Limitations

1. **Data Scope:**
   - Analysis limited to internet sales only; in-store sales not included
   - Budget data only available for specific months, not full historical comparison

2. **Time Constraints:**
   - Sales data ends in 2023; recent 2024 data not available for trend analysis
   - Seasonal patterns might need more years of data for accurate prediction

3. **Customer Details:**
   - Limited customer behavioral data (frequency, recency of purchases)
   - No customer acquisition cost data to calculate true customer lifetime value

4. **Product Details:**
   - No inventory levels or stock-out information to correlate with sales performance
   - Missing profit margin data - revenue analysis only, not profitability

5. **External Factors:**
   - No data on marketing campaigns, promotions, or external events that might explain sales spikes
   - Economic or seasonal factors not explicitly modeled

6. **Geographic Granularity:**
   - State-level analysis only; city-level or zip-code level could provide deeper insights
   - No distance-to-store or shipping cost analysis
