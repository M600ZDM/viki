README.md: header body footer

header:
	echo "--- file created by make" >README.md

body:
	(echo -n "date: "; date) >>README.md
	(echo -n "line number: "; wc -l guessinggame.sh) >>README.md

footer:
	echo "# eof" >>README.md

cleanup:
	rm -f README.md