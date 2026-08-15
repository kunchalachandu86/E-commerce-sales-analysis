# E-Commerce Sales Analysis 

End-to-end data analytics project analyzing 51,258 global e-commerce order lines (2011–2014), from raw data cleaning through SQL analysis, Power BI dashboards, and a final written business insight report.

**Prepared by:** Kunchala Chandu
**Organization:** Primeor Solutions (Internship Project)
**Tools used:** Excel · SQL Server (T-SQL) · Power BI

---

## 📊 Project Overview

The dataset covers order-level e-commerce transactions across **7 markets** and **13 regions** from 2011–2014. This project moves through the full analytics pipeline:

1. **Data cleaning** — raw sales data cleaned and structured in Excel
2. **SQL analysis** — T-SQL queries answering key business questions (top products, regional sales, discount trends, profitability, etc.)
3. **Dashboarding** — an interactive Power BI report with Executive Overview, Sales Analysis, and Product & Customer Insights pages
4. **Reporting** — dashboard findings translated into a polished, stakeholder-ready written insight report

## 🔑 Headline Results

| Metric | Value |
|---|---|
| Total Sales | ₹12.63M |
| Total Profit | ₹1.47M |
| Profit Margin | 11.6% |
| Total Orders | 51,258 |
| Average Discount | 14.29% |
| Sales Growth (2011→2014) | +90% |
| Orders Sold at a Loss | 24.5% (12,538 orders, –₹920K) |

## 💡 Key Insights

- **Technology** is the strongest category — highest sales (₹4.74M), highest average profit per order (₹65.4), and the lowest average discount (13.5%).
- **Furniture** is the second-largest category by sales (₹4.11M) but the least profitable per order, driven by the heaviest average discounting (16.8%).
- **Tables** is the only sub-category operating at a net loss overall (–₹64.1K), making it the clearest margin-risk area in the business.
- Sales are highly seasonal, peaking in **December** (₹1.58M) and troughing in **February** (₹0.54M).
- **APAC** is the top-performing market (₹3.58M, 28% of total sales); **Central** is the top-performing region (₹2.82M).
- Revenue is broad-based rather than concentrated — the top customer accounts for well under 1% of total sales.
- **Standard Class** shipping is used in 60% of all orders, with an average 4-day order-to-ship gap.

Full analysis, charts, and recommendations are in the [insight report](./Primeor_Internship_Insight_Report.pdf).

## 📁 Repository Structure

```
├── Primeor_Internship.sql                    # SQL Server queries: top products, regional/market sales,
│                                               # category profit, discount analysis, monthly trends, etc.
├── Cleaned_Dataset.xlsx                       # Cleaned source dataset used for analysis
├── Primeor_Internship.pbix                    # Power BI dashboard (Executive Overview, Sales Analysis,
│                                               # Product & Customer Insights)
├── Primeor_Internship_Insight_Report.pdf      # Final 8-section written business insight report
└── README.md
```

## 🛠️ SQL Analysis Covered

- Top 10 profitable products
- Top 10 customers by sales
- Region-wise total sales
- Category-wise average profit
- Highest-discount category
- Orders with negative profit
- Monthly sales trend
- Market-wise revenue analysis
- Top-performing sub-categories
- Ship mode usage analysis

## 📈 Recommendations (from the Insight Report)

- Tighten discount limits on Furniture, especially Tables — the only loss-making sub-category
- Prioritize Technology in promotions and inventory planning — highest margin at the lowest discount
- Build inventory/staffing plans around the Nov–Dec seasonal peak; run promotions in Feb–Apr to offset the trough
- Introduce a discount-approval threshold (~15%) given current average discount is already 14.3%
- Grow the Home Office segment (currently 18% of sales — the smallest of the three segments)
- Review logistics in APAC and EU, the two largest markets, for outsized impact on shipping cost/speed

## 📄 How to View

- **SQL**: Open `Primeor_Internship.sql` in SQL Server Management Studio (or any T-SQL-compatible client)
- **Dashboard**: Open `Primeor_Internship.pbix` in Power BI Desktop
- **Report**: Open `Primeor_Internship_Insight_Report.pdf` directly — no additional software needed
- **Dataset**: Open `Cleaned_Dataset.xlsx` in Excel or any spreadsheet tool
