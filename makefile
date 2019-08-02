# Make title
all: clean date title lc pages

date:
	echo "###### Created: $$(date) ######" > README.md

title: date
	echo "# $$(grep url .git/config |sed 's#/# #g; s/.git//g' |awk '{print $$NF}') #" >> README.md
	echo "---" >> README.md

lc: date
	echo "guessinggame.sh line count: $$( wc -l guessinggame.sh |egrep -o '^[0-9]+')" >> README.md

pages: date
	echo "[GitHub Pages Link](http://www.ryanhennings.com/unix-werkbench/)" >> README.md

clean:
	rm -f README.md

