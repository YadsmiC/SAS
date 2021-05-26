/*Importing data code*/

proc import 
datafile= "Path to DATA.xlsx"
DBMS=XLSX
out = customer;
run;

/* replace func - overwrites the data*/
proc import out = customer
DBMS=XLSX
datafile= "Path to DATA.xlsx" replace;
run;

/*show first 50 observcations of Data
proc print data= customer(obs=50);
run;

/*It is used to get basic details about the data, such as the number of records variables and variable types*/
proc contents data = customer;
run;


/*The SAS code that follows is for conducting univariate analysis*/
proc univariate data = customer;

proc univariate data = proc univariate data = customer;;
VAR age;
run;

/*To count the number of missing numeric values, you can use NMISS function.*/
/* p1 1st percentile*/
proc means Data = customer NMiss p1 p99;
run;

/*
The DATA step consists of a group of SAS statements that begins with a DATA statement. 
The DATA statement begins the process of building a SAS data set and names the data set
*/
Data Distance;
meter = 1;
cm = 1 * 100;
run;

proc freq data = customer;
table Age;
run;
