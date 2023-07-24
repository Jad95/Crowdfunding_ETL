# ETL Mini Project

This ETL (Extract, Transform, Load) mini project involves extracting data from multiple sources, transforming it into desired formats, and loading it into separate CSV files. The project deals with crowdfunding data, including information about campaigns, categories, subcategories, and contacts.

## Dependencies

The project requires the following Python libraries:

- pandas
- numpy

## Data Sources

The data for this project is obtained from two Excel files: "crowdfunding.xlsx" and "contacts.xlsx".

## Extract Data

The code extracts data from "crowdfunding.xlsx" and "contacts.xlsx" and stores them in Pandas DataFrames:

- "crowdfunding_info_df": DataFrame containing crowdfunding information extracted from "crowdfunding.xlsx".
- "contact_info_crowdfunding_info_df": DataFrame containing contact information extracted from "contacts.xlsx".

## Transformation Steps

### 1. Create Category and Subcategory DataFrames

Two DataFrames are created to store categories and subcategories:

#### Category DataFrame

- The "category_df" DataFrame contains two columns:
  - "category_id": A sequential number from 1 to the length of unique categories.
  - "category": The names of unique categories.

The DataFrame is exported as "category.csv".

#### Subcategory DataFrame

- The "subcategory_df" DataFrame contains two columns:
  - "subcategory_id": A sequential number from 1 to the length of unique subcategories.
  - "subcategory": The names of unique subcategories.

The DataFrame is exported as "subcategory.csv".

### 2. Create Campaign DataFrame

The "campaign_crowdfunding_info_df" DataFrame is a copy of "crowdfunding_info_df". The following transformations are applied:

- Renamed columns: The "blurb," "launched_at," and "deadline" columns are renamed to "description," "launched_date," and "end_date," respectively.
- Data Type Conversion: The "goal" and "pledged" columns are converted to "float" data type.
- Date Formatting: The "launched_date" and "end_date" columns are converted to a datetime format.
- Merging: The DataFrame is merged with the "category_df" and "subcategory_df" DataFrames to add corresponding category and subcategory IDs.
- Unwanted Columns: Unwanted columns like "staff_pick," "spotlight," "category & sub-category," "category," and "subcategory" are dropped.
- Export: The transformed DataFrame is exported as "campaign.csv".

### 3. Create Contacts DataFrame

The "contact_info_crowdfunding_info_df" DataFrame contains contact information in JSON format. The following transformations are applied:

- Convert JSON to Dictionary: The JSON strings in the "contact_info" column are converted to dictionaries.
- Create "contact_info_df": A DataFrame is created using the dictionary values, containing the "contact_id," "first_name," "last_name," and "email" columns.
- Data Type Conversion: The DataFrame's "contact_id" column is converted to integers.
- Reordering Columns: The columns are reordered to "contact_id," "first_name," "last_name," and "email."
- Export: The transformed DataFrame is exported as "contacts.csv".

## ERD and Table Schema

The ERD (Entity-Relationship Diagram) and table schema are provided separately as part of the project documentation. The ERD illustrates the relationships between different tables in the database, while the table schema defines the structure of each table, including column names, data types, and constraints.

## Loading Data into PostgreSQL

The crowdfunding_db_table_schema.sql script is used to create the table schema in pgadmin so that the data from the "category.csv","subcategory.csv","campaign.csv" and "contacts.csv" files can be load into the PostgreSQL database. It creates a new database and sets up the required tables for the data.

## Exploring the Data

Use pgAdmin to explore the loaded data in the PostgreSQL database. Perform SQL queries to analyze the data and gain insights into the crowdfunding campaigns.

## Usage

To run the ETL mini project, ensure that you have the required dependencies installed (pandas and numpy). Run the code, and it will extract data from the Excel files, perform transformations, and generate CSV files for categories, subcategories, campaigns, and contacts.

## References
   - Official Python Documentation: https://docs.python.org/3/
   - Official PostgreSQL Documentation: https://www.postgresql.org/docs/
   - Official pgAdmin Documentation: https://www.pgadmin.org/docs/
   - Python for Data Science Tutorial: https://www.datacamp.com/courses/introduction-to-data-science-in-python
   - Data Analysis with Pandas Tutorial: https://www.datacamp.com/courses/data-manipulation-with-pandas
   - SQL for Data Science Tutorial: https://www.datacamp.com/courses/introduction-to-sql
   - Stack Overflow
   -YouTube tutorials
   - Explore GitHub repositories with ETL projects or data analysis projects to see how others have implemented similar pipelines and processes.
