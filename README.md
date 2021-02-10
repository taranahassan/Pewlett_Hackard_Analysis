# Pewlett_Hackard_Analysis

## Overview of the analysis

**PH** *(Pewlett Hackard)*  is preparing itself for the future; they are looking to be proactive to fill any upcoming job vacancies.  For this process they need to review their employee data and determine which employee would be retiring in the near future. <br>
Currently all their data are in CSV files and now PH has decided to upgrade to SQL to make this process easier. <br>
Using SQL we were able to create tables and import all the CSV files into a database by linking each table by their primary and foreign keys.  The tables created were:<br>

1.  **Departments** - details of each department number that is associated to each deparment name.<br>
2.  **Department Managers** - employee number referenced for each manager with their associated department number, and their start to end date in that position. <br>
3.  **Department Employees** - employee number referenced for each employee with their associated department number, and their start to end date in that postion.<br>
4.  **Employees** - list of all employees that have or still work at PH; their employee number, full name, birth date, gender and hire date. <br>
5.  **Salaries** - employee number with associated salaries and their start to end date receiving that salary. <br>
6.  **Titles** - employee number with associated title and their start to end date holding the title.  <br>

Managers wanted to create a new mentoring program for employees getting ready to retire. This will allow any retirees to step back in a part-time role with in PH and become a mentor to guide the new hired employees by sharing their success and experiences.  Before they can present their idea to the CEO, they require factual results to the show number of employees retiring from each department.

The following analysis results were created to determine the number of employees per title that will be retiring soon and if they are eligible to participate in the mentorship program.

## Results

By using the above data we extracted related information from each table. New tables with data were created by joining two or more existing tables; queried in SQL to filter the related columns.

1.  **[retirement_titles.csv]**(https://github.com/taranahassan/Pewlett_Hackard_Analysis/blob/main/Data/retirement_titles.csv) was created by extracting details by joining the Employees and Titles table to query employees' employee number, name, title name and dates held.  We then filtered employees with the birth date between 1952 and 1955 to determine the retiring age.

2.  **[!unique_titles.csv]**(https://github.com/taranahassan/Pewlett_Hackard_Analysis/blob/main/Data/unique_titles.csv) was created by removing any duplicate employee names and only keeping their most recent position held at PH.  This table was set by descending order of each employee number and the their most recent job title.
