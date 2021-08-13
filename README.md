# Module 7 Challenge - Pewlett Hackard Analysis

## Overview of Pewlett Hackard Analysis

The purpose of this assignment is to use SQL to:
- determine the number of retiring employees per title;
- identify employees who are eligible to participate in a mentorship program, and;
- write a report that summarizes the two tables and helps prepare Bobby’s manager for the “silver tsunami” as many current employees reach retirement age.


## Results - Pewlett Hackard Analysis

### Number of Retiring Employees per Title

- The total number of retiring employees is 90,398 (Figure 1: [Count of Employees About to Retire](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/Count%20of%20Employees%20About%20to%20Retire.png).

- Senior Engineers (n=29,414) and Senior Staff (n=28,254) job titles will be most impacted by these retirements, while Managers (n=2) are least impacted (Figure 2: [Count of Employees About to Retire by Title](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/Count%20of%20Employees%20About%20to%20Retire%20by%20Title.png).


### Employees Eligible to Participate in Mentorship Program

- There are 1549 employees eligible for a mentorship program (Figure 3: [Count of Employees Eligible for Mentorship Prog](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/Count%20of%20Eligible%20for%20Mentorship%20Prog.png)).

- The Senior Staff job title category has the most employees eligible for a mentorship program (n=418), followed by Engineer (n=387), Staff (n=306), Senior Engineer (n=302), Technique Leader (n=77) and Assistant Engineer (n=59) (Figure 4: [Count of Employees Eligible for Mentorship by Title](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/Mentorship%20Eligibility%20by%20Title.png)).


## Summary - Pewlett Hackard Analysis 

### Questions

#### Q1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Answer: 90,398

#### Q2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Answer: No. The ratio of mentors to new employees if everyone retired at this moment would be approximately 1:58. This is too heavy of a load for each mentor. 

### Suggested Additional Queries

 - Suggestion 1: Retiring Employees by Department - Use this to determine which departments will be impacted the most/least by the upcoming "silver tsunami."

 - Suggestion 2: Retiring Employees by Specific Year of Retirement - Narrow the range of retirement eligibility to individual years (1952, 1953, 1954, 1955) to determine which specific years will be impacted the most/least by the upcoming "silver tsunami."

## Files
- [Employee_Database_challenge.sql](https://github.com/pmoores/Pewlett_Hackard_Analysis/tree/main/Queries/Employee_Database_challenge.sql)

- [retirement_titles.csv](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/retirement_titles.csv)

- [unique_titles.csv](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/unique_titles.csv)

- [retiring_titles.csv](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/retiring_titles.csv)

- [mentorship_eligibility.csv](https://github.com/pmoores/Pewlett_Hackard_Analysis/blob/main/Data/mentorship_eligibility.csv)
