# Business-Intelligence-for-Urban-Forestry-Operations
A Root Cause Analysis of Urban Forestry work orders to understand which work zones and contractors are driving overall SLA compliance below target and determining if the bottleneck is caused by backlog age in specific service types or caused by low workforce capacity.

## 📌 Executive Summary
**The Problem:** The Division Manager of Urban Forestry wants to understand which work zones and contractors are driving overall SLA compliance below target, and is the bottleneck caused by backlog age in specific service types or caused by low workforce capacity? 

**The Solution:** Perform root cause analysis of tree maintenance work orders from 2025 to answer the following business questions: 
  
* Why is overall SLA compliance dropping below target?
* Why are tree trimming jobs missing their SLA at a high rate?
* Which work zone is most underperforming on tree trimming? Why? 

**The Impact:** 10.6% reduction in SLA breach rates for tree trimming in Zone 2.​

Using verified daily outputs of 3.3 work orders completed per day per crew, an annual trimming volume of 700 work orders for Zone 2, a 104-day average lead time, and a baseline of 2 active trimming crews in Zone 2, requiring just one additional trimming crew will boost daily output by 50%, from 6.6 work orders completed to 9.9, and lower average lead time by 33.65%, from 104 days to about 69 days, meeting the department's target timeline of 90-days.

These changes will yield a 10.6% reduction in SLA breach rates for tree trimming where most needed in Zone 2.

## 📊 Live Dashboard & Links
🖥️ **Interactive Dashboard:** 
https://public.tableau.com/views/OperationalPerformanceforUrbanForestryDivision/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

![Project Screenshot](https://github.com/jburkes1/Business-Intelligence-for-Urban-Forestry-Operations/blob/6a777afa480471679dce665faa85e9d7ac0b73d3/images/Business%20Intelligence%20Dashboard%20for%20Urban%20Forestry.png)

📝 **SQL Queries:**
https://github.com/jburkes1/Business-Intelligence-for-Urban-Forestry-Operations/tree/28afd28f142e4a0414af76e51450166515dbea4f/scripts

📈 **Presentation Deck:**
https://github.com/jburkes1/Business-Intelligence-for-Urban-Forestry-Operations/blob/28afd28f142e4a0414af76e51450166515dbea4f/deliverables/Presentation%20-%20Business%20Intelligence%20for%20Urban%20Forestry.pdf

## 🛠️ Skills & Tools Used
**Data Extraction & Transformation:** DBeaver, SQL (PostgreSQL)

**Data Visualization:** Tableau Public

**Analytical Techniques:** Root Cause Data Analysis (RDA)

## 📐 Data Structure & Workflow
The dataset consists of `6` tables containing `29,160` rows of work order data representing tree maintenace records from the City of Houston's Urban Forestry Division from 2020 to 2025.
