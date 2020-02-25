# ETL-Project

## Team Members

  * Alejandra Rosa
  
  * Andrew Suprenant
  
  * Nate Al-Najjar

## Overview
All members of our group have an interest in public policy and social metrics – that is why the following two datasets stood out when we reviewed Kaggle: World Bank’s analysis of life expectancy by country, and Fraser Institute's measurement of each country’s “economic freedom index."

ISO Codes were developed by the International Organization for Standardization, affiliated with the United Nations, to provide exact descriptors of countries and their subdivisions. This standardization is incredibly useful for data manipulation across sources and social metrics. 

Economic freedom is an indicator of economic health, stability, and dynamism of a given country. This metric is comprised of over 50 smaller scores, such as:
* Ease of movement of people & goods
* Property rights
* Government spending as a share of the economy
* Judicial independence
* Gender equality...

to name just a few. 

This is distinct from other more common measures of economic performance, such as GDP or GDP growth rate. Currently, there are about 195 countries. Unfortunately, one of our datasets listed only about 165countries, and the other included about 265 (this dataset included regional & demographic analysis, adding to the total). Since the value of this analysis comes from the intersection of the datasets, we decided to limit our results to the 165 matches. 

## Process
* Load CSVs into Pandas

* Drop unnecessary rows & null values

* Rename columns to match

* Create tables in SQL

* Connect Pandas and SQL with SQLAlchemy to introduce data

* Merge tables on iso_code

## Data Sets:

* Economic Freedom: https://www.fraserinstitute.org/economic-freedom/dataset?geozone=world&year=2017&page=dataset&min-year=2&max-year=0&filter=0

* Life Expectancy: https://data.worldbank.org/indicator/SP.DYN.LE00.IN

