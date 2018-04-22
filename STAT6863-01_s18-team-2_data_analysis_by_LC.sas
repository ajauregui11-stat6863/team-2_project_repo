*******************************************************************************;
**************** 80-character banner for column width reference ***************;
* (set window width to banner width to calibrate line length to 80 characters *;
*******************************************************************************;

* set relative file import path to current directory (using standard SAS trick);
X "cd ""%substr(%sysget(SAS_EXECFILEPATH),1,%eval(%length(%sysget(SAS_EXECFILEPATH))-%length(%sysget(SAS_EXECFILENAME))))""";


* load external file that will generate final analytic file;
%include '.\STAT6863-01_s18-team-2_data_preparation';


*******************************************************************************;
* Research Question Analysis Starting Point;
*******************************************************************************;
*
Question: Which day of the week has more crime?

Rationale: This would help identify which day of the week has higher crime 
rates and allows police departments to better allocate resources when
targeting crime prevention.

Note: Using "WEEKDAYw" formating, this compares the column "TimeDispatch" 
from Calls_for_Service_2016 to the column of the same name from 
Calls_for_Service_2017 to combine the column and groups by day of the week to
"Weekday" from each year that has a unique NOPD Item Number. 

Limitations: The weekday format converts the datetime value into a weekday 
number making it difficult to read the data. 

Follow Up: Use a format proc to convert the numbers into names.
;

*******************************************************************************;
* Research Question Analysis Starting Point;
*******************************************************************************;
*
Question: What is the most common offender age? 

Rationale: This should help determine what age that most offenders are 
committing crime and whether there is a way to decrease crime at that age.

Note: This compares the column "Item_Number" from Electronic_Police_Report_2016
to the column of the same name from Electronic_Police_Report_2017 to combine 
the column "Offender_Age" from each year that has a unique Item Number.

Limitations: When merging the two datasets there may be some duplicates
that appear in both. Using Union instead of Union All will remove them.

;


*******************************************************************************;
* Research Question Analysis Starting Point;
*******************************************************************************;
*
Question: What is the top district where murders happen?

Rationale: This could help identify which districts are more prone to murders
and could help community advocates target those for crime prevention.

Note: This compares the column "District" from Electronic_Police_Report_2016 
where the column "Signal_Description" includes "Homicide" and that which has a 
unique Item_Number.

Limitations: Some rows have missing data, removing these rows will ensure that 
the analysis will go smoothly.
;

