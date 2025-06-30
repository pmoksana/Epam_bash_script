# Epam_bash_script

Bash Task 1
Company ABC has uncontrolled process of employee’s accounts creation. 
Current user’s list looks like:
2,1,Christina Gonzalez,Director,,
8,6,Bart charlow,Executive Director,,
9,7,Bart Charlow,Executive Director,,

Currently process means adding names, email and other personal data manually to the accounts.csv file without any rules.
Department head has decided to improve it based on the naming convention implementation. 
Good idea for newcomers, but what to do with current user’s list?

objective:
Develop automated way (bash script) and create new accounts_new.csv file based on current accounts.csv and below.


Definition of done:
Bash script must: 
Automatically creates accounts_new.csv
Update column name.
Name format: first letter of name/surname uppercase and all other letters lowercase.
Update column email with domain @abc.
Email format: first letter from name and full surname, lowercase.
Equals emails should contain location_id.
Sripts should has name task1.sh
Path to accounts.csv file should be as argument to the script.
Script should not use any additional installed packages!
./task1.sh accounts.csv


Final user’s list must looks like: :

2,1,Christina Gonzalez,Director,cgonzalez@abc.com,
8,6,Bart Charlow,Executive Director,bcharlow6@abc.com,
9,7,Bart Charlow,Executive Director,bcharlow7@abc.com,
