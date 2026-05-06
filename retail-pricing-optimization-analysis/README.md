# Retail Pricing Optimization Analysis

An end-to-end retail data analysis project built using the Kaggle Superstore dataset.

This project analyzes how discounting impacts profitability and identifies the pricing threshold where business transactions become loss-making.

The project is being developed in multiple phases to simulate a real-world analytics workflow.

---

# Tools Used

* Microsoft Excel
* MySQL
* Power BI

---

# Project Objective

The goal of this project is to answer the following business questions:

* At what discount level does profit become negative?
* Which regions are most sensitive to discounting?
* How large is the impact of risky discounting?
* Should pricing strategy vary across regions?

---

# Dataset Preparation

The original flat dataset was manually transformed into relational tables:

### Customer Table

Customer-level information

### Orders Table

Order and regional details

### Product Table

Product and category details

### Transactions Table

Sales, quantity, discount, and profit

This structure was created to support advanced SQL analysis.

---

# Project Phases

---

# Phase 1: Excel Analysis

## Work Completed

* Data cleaning
* Date correction
* Duplicate removal
* Discount band creation
* Profit margin calculation
* Pivot table analysis

---

## Key Findings

### Discount Profitability Analysis

Profit decreases as discount increases.

The key profitability break point was identified in the:

**21–30% discount range**

---

### Category Analysis

All categories became loss-making at higher discount levels.

Categories analyzed:

* Furniture
* Office Supplies
* Technology

---

### Regional Analysis

Most regions showed declining profitability as discounts increased.

---

## Phase 1 Recommendation

Maintain standard discounts below:

**20%**

---

# Phase 2: SQL Validation

Phase 2 validated Excel findings using structured SQL analysis.

---

## SQL Concepts Applied

* CASE WHEN
* INNER JOIN
* GROUP BY
* Aggregate Functions
* CTE
* Window Functions
* Ranking Functions

---

# SQL Findings

---

## 1. Profitability Threshold Confirmed

SQL fully validated the Excel finding.

Profitability becomes negative after:

**21–30% discount**

This confirms the company’s critical pricing threshold.

---

## 2. Regional Discount Sensitivity

Most regions became loss-making after the 21–30% range.

However:

**North Asia became loss-making earlier at 11–20%**

This shows stronger discount sensitivity.

---

## 3. Regional Profitability Ranking

SQL ranking identified:

### Lowest Profitability Regions

1. Southeast Asia
2. EMEA
3. Africa

---

### Highest Profitability Region

North Asia

This reveals that North Asia performs strongly overall but reacts negatively to discount increases.

---

## 4. Risky Transaction Analysis

A CTE-based risk analysis identified:

**11,328 risky transactions**

Average loss per risky transaction:

**-71.92**

This indicates large-scale discount inefficiency.

---

## 5. Category Validation

Category total profit:

Furniture: 285204.72
Office Supplies: 518473.83
Technology: 663778.73

All categories remain profitable overall.

This confirms that:

The issue is discount strategy, not weak product categories.

---

## 6. Monthly Profitability Trend

Monthly profit fluctuated across the year.

### Highest Average Profit

Month 2

### Lowest Average Profit

Month 9

This suggests possible seasonal pricing effects.

---

# Phase 3: Power BI Dashboard Development

Phase 3 focused on transforming analytical findings into interactive pricing intelligence dashboards.

---

## Dashboard Features Created

* KPI Cards
* Profit by Discount Band Visualization
* Regional Profitability Dashboard
* Risk Analysis Dashboard
* Interactive Filters

---

## Dashboard Findings

### Executive Overview

Dashboard visuals confirmed that profitability becomes negative after the:

**21–30% discount range**

---

### Regional Analysis

Power BI confirmed:

**North Asia shows the earliest profitability decline**

This supports the SQL regional sensitivity findings.

---

### Risk Analysis

Dashboard monitoring confirmed:

**11,328 high-risk transactions**

Average loss:

**-71.92**

This highlights systematic pricing inefficiency.

---

## Phase 3 Insight

Power BI transformed the analytical findings into interactive business dashboards for pricing decision support.

---

# Main Project Insight

The strongest validated business insight across all three phases:

## Discounts above 20% significantly increase profitability risk

This is the primary pricing threshold identified in the project.

---

# Final Business Recommendations

---

## 1. Company-Wide Discount Policy

Keep standard discounts below:

**20%**

---

## 2. North Asia Pricing Policy

Recommended maximum discount:

**10%**

---

## 3. Region-Specific Discount Strategy

Avoid applying one universal discount strategy.

Different regions show different sensitivity levels.

---

## 4. High-Risk Transaction Monitoring

Review all transactions above the profitability threshold.

---

## 5. Seasonal Pricing Review

Monitor monthly profit trends before applying promotional pricing.

---

# Current Status

Phase 1 Completed
Phase 2 Completed
Phase 3 Completed

---

# Repository Structure

retail-pricing-optimization-analysis/

phase1_excel_analysis/

phase2_sql_analysis/

phase3_powerbi_dashboard/

README.md

---

# Dataset Source

Kaggle Superstore Dataset

Used for educational and portfolio analysis purposes.
