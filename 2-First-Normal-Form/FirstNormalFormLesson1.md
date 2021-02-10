# What is first normal form? - Lesson 1
###### BYTE4U - IT Solutions

## Summary
- [What will you learn](#What-will-you-learn)
- [Prerequisites](#Prerequisites)
- [Source code](#source-code)
  - [In this lesson we will study first normal form.](#In-this-lesson-we-will-study-first-normal-form.)
  
## What will you learn
- First normal form

## Prerequisites

- Knowledge of relational database 
- MySQL Language

## Source code

### Script for this lesson

``` mysql
--  1º Shows all records
SELECT * FROM customer;

-- 2º Counts how many customers there are
SELECT COUNT(name) AS 'Customers Qty'  
FROM cliente;

-- 3º Count how many phones there are 
SELECT COUNT(phone) AS 'Phones' 
FROM customer;

-- 4º Shows all female customers 
SELECT genre, COUNT(genre)  
FROM customer
GROUP BY genre;

-- 5º Shows customers all Seattle customers 
SELECT address, COUNT(address) 
FROM customer
GROUP BY address;

```
