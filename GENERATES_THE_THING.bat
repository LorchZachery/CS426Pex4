:::::::::::::::::::::::::::::
:: This is the LEXDRIVER it runs the test cases for the toy language from CS426
::
:: use double :'s for a line comment
:: use > to create and redirect output to a file
:: use >> to append output to a file
:::::::::::::::::::::::::::::

:: Run good test cases
echo Jonathan's and Zach's 426 Code Generator for English Language Part 4 (Part 4: The Electric Boogaloogaloo):  The Electric Boogaloogaloo> results.txt
echo Running Correct Test Cases >> Results.txt
echo. >> results.txt

echo Testing correct code formation and generation >> results.txt
bin\Debug\ConsoleApplication.exe test.txt >> results.txt
echo. >> results.txt


ilasm.exe test.il >> results.txt

test.exe >> results.txt

echo ----------------------------------- >> results.txt


echo Documentation statement is in 'Documentation.txt' in the main file. >> results.txt