# SQL

## Wildcard Characters

| Classical bits | Quantum bits (qubits) |
| ----------- | ----------- |
| % | Represents zero or more characters |
| _ | Represents a single character |
| [] | Represents any single character within the brackets * |
| ^ | Represents any character not in the brackets * |
| - | 	Represents any single character within the specified range * |
| {} | Represents any escaped character ** |

> \* Not supported in PostgreSQL and MySQL databases.

> \** Supported only in Oracle databases.

## SQL magic commands

`%sql`

The `%sql` magic command is used to execute a single line of SQL code in a code cell. It allows you to run SQL queries and commands without the need for a multi-line SQL block. When you use `%sql` followed by a SQL statement on a single line, the magic command sends that SQL statement to the database for execution.

```
empno = '000010'
%sql SELECT FIRSTNAME, LASTNAME, SALARY FROM EMPLOYEE WHERE empno={empno}
```

To extend the SQL over multiple lines, use the Python `\` character as the last character of a string. This will allow you to continue the statement onto the next line:

```
empno = '000010'
%sql SELECT FIRSTNAME, \
LASTNAME, \
SALARY \
FROM EMPLOYEE \
WHERE empno={empno}
```

The other option is to create a Python variable that contains the SQL string using triple quotes (`'''`,`"""`). If you are using variable substitution in the string then you must remember to use the `f"""` qualifier at the beginning of the string to ensure the variable substitution is done.

```
empno = '000010'
SQL = f"""
SELECT FIRSTNAME, 
LASTNAME, 
SALARY 
FROM EMPLOYEE 
WHERE empno={empno}
"""
%sql {sql}
```

`%%sql`

The `%%sql` magic command in Jupyter Notebook is used to execute SQL queries in a code cell. When you start a code cell with `%%sql`, it tells Jupyter that the content of the cell should be treated as SQL code rather than regular Python code.

```
empno = '000010'
%%sql SELECT FIRSTNAME, LASTNAME, SALARY FROM EMPLOYEE WHERE empno={empno}
```
