Requirements:
Files need to be in the same directory as the Github-Repository "pgdp2223-tests" and the cloned homework repositories
homework repositories need to be named in the following schema: "pgdp2223wXXhXX-[TUM-Kuerzel]" (the default naming)
Java 19, git is required

Remarks:
this script uses "git pull", which requires credentials
It will be simplest if your system is already configured to use them

On Mac: running update.sh from terminal bypasses execution restrictions

Documentation:
	.config:
		saves the TUM-Kuerzel for future use
	moveUtility.jar:
		reads the test files and copies them to the correct positions within the homework repositories
		this overwrites existing tests, therefore updating them
		configures build.gradle to use JUnit, allowing you to run the tests
		configures .gitignore to omit the Testfiles, ignoring them from commits
		creates a new changelist "Do not touch", where .gitignore and build.gradle are located, so they won't be committed accidentaly
		(You don't need to understand changelists or anything else, it should just work..)
	update.bat: [Windows]
	update.sh: [Linux/Mac]
		this script manages the TUM-Kuerzel, updates the repo for the tests and runs the jar

Finally:
	Grüß Gott
	selaminaleykum to those who celebrate
	or: Anan :)