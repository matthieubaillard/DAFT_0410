![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Data Preparation 


## Introduction

In this lab you will work with the dataset that has some issues. Please do everything to be sure that it is ready for the further work.

## Getting Started

In this lab you will learn the data preparation techniques.
Here is the dataset: https://docs.google.com/spreadsheets/d/1CYSDJooG0_58AzbYNRwvtC3gXIUhZNg1/edit?usp=sharing&ouid=109198901319062172979&rtpof=true&sd=true

## Tasks
### Part 1: Upload the data
### Part 2: Analyze your data and create a plan for data preparation
### Part 3: Data cleansing  (missing values, outliers, duplicates, data consistently)
### Part 4: Encode categorical data
### Part 5: Upload the deliverables to GitHub


## Deliverables

- Code in Python
- Readme file with your plan, approaches and summary
- Prepared dataset in csv format

## Submission

Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.

## Resources

[Pandas - data preparation] https://towardsdatascience.com/essential-commands-for-data-preparation-with-pandas-ed01579cf214

[Pandas] https://realpython.com/python-data-cleaning-numpy-pandas/


### Plan

- check missing values
- sort data by amount and check head() to see outliers
- check describe() and isna
- drop Transaction ID column (Last Unnamed Column) - ok
- drop last row added by the shifted unnamed column - ok

- Birth year:
Missing values: duplicates on ClientID helps us fill them up
    BirthYear = 1967 for ClientID = 34987 OK
    BirthYear = 1999 for ClientID = 34988 OK

1923 not consistent with Manager / Developer / HR
2013 to 2017 not consistent with their profession either Driver / Sailor / Manager
-> Depending on the use of the year in the future analysis, those values should be deleted or turned to Unknown, or projected through avg or nearest neighbor

- I would suggest to keep missing year as NAN in BirthYear, and add a column for years + guessed years (based on mean for same profession, after dropping Client Duplicates - or on nearest neighbor)

- Amount outlier: 2399090. Should it be 2399 or 23990? Ideally check with Clients or stakeholders (we'll assume it's 23K, as it's closer to the mean value of other data, e.g. ca. 21K)

- Profession: Capitalize all (First letter uppercase and rest lowercase) and sort their unique values alphabetically to spot spelling mistakes more easily
- Professions where len =< 3 letters (i.e. HR, BDM) should be uppercase
- etudient, Student -> Student
- Sailer -> Sailor (or Salesperson?) OK
- Barmen -> Bartender

#We were wondering if sailer stood for sailor or salesperson, but we can see that that Client is actually a (sales?) Manager. OK
#Fill up missing Profession = BDM for Client = 35008 OK

- Data Types: should be turned to int instead of float: Transaction ID, Client ID, BirthYear and Department 78.0

- Check if any Duplicates in Transaction ID and Client ID:
- Client ID 35008: Birtyear to be revised as 1967, and Profession can be filled up as BDM

