# Retail Pricing Optimization Analysis

## Phase 1: Excel Analysis

---

# About This Project

This project is based on the Kaggle Superstore US dataset.

The main goal of this project is to study how discount affects profit and find the discount level after which the company starts facing losses.

This is a step-by-step end-to-end data analysis project that I am building using:

* Microsoft Excel
* SQL
* Python
* Power BI

This repository currently contains **Phase 1**, which focuses on Excel analysis.

---

# Dataset Preparation

The original dataset was available as one flat sheet.

To make the project more realistic and prepare it for future SQL analysis, I manually separated it into 4 sheets:

### Customer Sheet

Contains customer-related information

### Orders Sheet

Contains order details

### Product Sheet

Contains product details

### Transaction Sheet

Contains transaction-level data such as:

* Sales
* Profit
* Quantity
* Discount

This helped create a relational structure similar to real business databases.

---

# Data Cleaning

Before starting analysis, I performed data cleaning.

### Fixed Date Errors

Initially, the Order Date and Ship Date columns were showing incorrect values because of formatting issues.

These dates were corrected.

---

### Removed Duplicate Records

Duplicate rows were removed from the separated sheets.

---

### Validated Data

Checked the dataset for consistency before analysis.

---

# New Columns Created

To perform analysis, I created new calculated columns in the Transaction sheet.

---

## 1. Discount Band

Discount values were grouped into:

* 0%
* 1–10%
* 11–20%
* 21–30%
* 31–50%
* 50%+

This helped compare profit across different discount levels.

---

## 2. Profit Margin

Calculated using:

Profit ÷ Sales

This helped understand profitability for each transaction.

---

# Data Enrichment

The Category column was not available in the Transaction sheet.

To solve this, I used Excel lookup functions to bring Category data from the Product sheet into the Transaction sheet.

This allowed category-wise analysis.

---

# Pivot Table Analysis

I created 3 pivot tables to analyze discount impact.

---

# Pivot 1: Discount Band vs Average Profit

## Purpose

To check how profit changes as discount increases.

---

## Findings

* 1–10% discount generated the highest average profit
* Profit started decreasing after 10%
* Profit became negative in the 21–30% range
* Higher discounts caused larger losses

---

## Insight

Small discounts help increase profit.

High discounts reduce profitability.

---

## Recommendation

Standard discounts should stay below 20%.

---

# Pivot 2: Category vs Discount Band

## Purpose

To check whether discount affects some categories more than others.

---

## Findings

All categories became loss-making after 21–30% discount:

* Furniture
* Office Supplies
* Technology

---

## Insight

The issue is not limited to one category.

The overall discount strategy is affecting the whole business.

---

## Recommendation

The company should apply strict discount control across all categories.

---

# Pivot 3: Region vs Discount Band

## Purpose

To check whether discount impact changes across regions.

---

## Findings

Most regions showed lower profit as discount increased.

Very high discounts caused losses in nearly all regions.

---

## Insight

Aggressive discounting is risky across all markets.

---

## Recommendation

Region-level monitoring should be done before offering heavy discounts.

---

# Main Finding

The most important finding from this phase:

## Profit becomes negative after 20% discount

The profitability break point was identified in the **21–30% discount range**.

This means discounts above this level start damaging profit.

---

# Final Recommendations

Based on all Excel analysis:

### 1. Keep standard discounts below 20%

This is the safest profitable range.

---

### 2. Discounts above 20% should require approval

This helps avoid unnecessary losses.

---

### 3. Discounts above 30% should only be used for:

* Stock clearance
* Seasonal sales
* Special campaigns

---

### 4. Monitor regional performance before giving large discounts

Different markets should be tracked carefully.

---

# Final Conclusion

From this Excel analysis, I found that discount has a strong impact on profit.

Moderate discounts improve profitability.

High discounts reduce profit and create losses.

The analysis clearly shows that the company should avoid giving discounts above 20%.

---

# Tools Used in Phase 1

* Microsoft Excel
* Pivot Tables
* Lookup Functions
* Calculated Columns

---

# Current Status

Phase 1 Completed

---

# Next Phase

In Phase 2, I will validate these findings using SQL.

Planned SQL work includes:

* CASE WHEN
* Joins
* CTE
* Window Functions
* Profitability Ranking

This will help confirm the Excel findings with advanced query analysis.
