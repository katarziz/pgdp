Requirements:
Files need to be in the same directory as the Github-Repository "pgdp2223-tests" and the cloned homework repositories
homework repositories need to be named in the following schema: "pgdp2223wXXhXX-[TUM-Kuerzel]" (the default naming)

Remarks:
this script uses "git pull", which requires credentials
It will be simplest if your system is already configured to use them

The tests won't run if your gradle is not configured for JUnit
opening any of the testfiles and adding JUnit to the path with [Alt]+[Enter] should fix this

Documentation:
	.config:
		saves the TUM-Kuerzel for future use
	moveUtility.jar:
		reads the test files and copies them to the correct positions within the homework repositories
		this overwrites existing tests, therefore updating them
	update.bat: [Windows]
	update.sh: [Linux/Mac]
		this script manages the TUM-Kuerzel, updates the repo for the tests and runs the jar
