# Data Warehousing with Oracle: Designing a Database

Building a data warehouse using Oracle's MySQL Workbench to integrate different data sources through ETL and provide necessary business intelligence to gain operational advantage. 
## Table of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Data Cleaning and Preparation](#data-cleaning-and-preparation)
- [Exploratory Data Analysis](#exploratory-data-analysis)
- [Operational Business Intelligence Analysis](#operational-business-intelligence-analysis)
- [Recommendations](#recommendations)

  
## Project Overview
---

The goal of this project is to design data models and a core database for a European travel agency's data warehouse in order to aid in business expansion and gain competitive pricing advantages over their competitors. 



### Data Sources

* [Customer Data](https://github.com/phelpsbp/Data-Warehousing-with-Oracle/blob/main/customer.csv)
* Reservation data from old system, in csv:
* Geographical data including latitudes and longitudes, in csv:

### Tools

Tools Used:
* Oracle MySQL Workbench
* Tableau Public 

---

## Data Cleaning and Preparation

In the initial data preparation phase, we performed the following tasks:
1. Import the customer and reservation data to create an EER.
2. Establish the relationship between the two datasets.
3. Design a data model for the trip origins and destinations, import the data and apply data governance.
4. Design the core data model for the data warehouse
5. Extract, transform, and load the data warehouse 

## Exploratory Data Analysis

EDA involved applying the business intelligence tool to identify:

1. Viable new markets
2. Which routes are not cost effective
3. Costs per trip and kilometer
4. Querying data out of the warehouse to produce visualizations in Tableau

## Operational Business Intelligence Analysis

The goal here is to identify any potential new markets.

### 1. Costs per Kilometer 
Determing costs per kilometer to identify the most expensive routes.

![Screenshot 2024-01-31 161105](https://github.com/phelpsbp/Data-Warehousing-with-Oracle/assets/150976820/cd0dad6a-920a-481c-898c-a6feec035dbf)

The most expensive route appears to be from Amsterdam to Bern which is $1.43 per kilometer.
Others that are high in cost are Gothernburg to Vienna at 0.867¢, Oslo to Frankfurt at 0.865¢, and London to Gibraltar at 0.853¢.

The most cost effective routes are routes whose destination is Ibiza: Helsinka to Ibiza and Munich to Ibiza.  

### 2. Origins 
Using origin latitude and longitude coordinates to visualize trip starting points. 


[PLACE IMAGE HERE]

The map includes where customers live or booked their trips from. There are no bookings from France or large parts of Eastern Europe. France, Poland, Belarus, and Ukraine can be focused on to expand customer usage. 


### Destinations

[PLACE IMAGE HERE]

This map shows where current customers traveled for their trips.
Some new markets might be Scandinavia, France, Spain, Turkey, and Eastern Europe.
With Spain, it seems as if people travel from mainland to the shore or islands, focus can be put on traveling to mainland as well. 
Travel to Italy could be a possible new market. 

#### Competitor 

Let's take a look at competitor data to help determine the best pricing strategy. To do this, we have to create another core data model with the EER diagram for the competitor data, and load it into our data warehouse.

[PLACE IMAGE HERE]

They are doing significantly better in pricing on trips from Amsterdam to Bern. As well as from Naples to Cork, Edinburgh to Rome, Berlin to Reykjavik, and London to Gilbraltar.

The competitors are doing better, cost wise, on most routes. 


## Recommendations
The key findings are summarized as follows:
1. There is potential for new markets in France and Eastern Europe. Efforts to increase the use of the travel service should be focused in those areas.  
2. Look to reduce pricing on routes that are not cost effective - specifically from Amsterdamn, Vienna, and London. 

---
