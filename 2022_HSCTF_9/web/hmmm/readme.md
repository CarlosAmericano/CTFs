## DESCRIPTION
Look at these images I found!



## NOTES

This will never work
@app.route("/flag")
def flag():
	if 2 + 2 == 5:
		return send_file("/flag.txt")

Need to somehow pass the /flag/flag.txt to the image loader function, i think ??


http://web1.hsctf.com:8003/image?image=../images/back.jpg WORKS
http://web1.hsctf.com:8003/image?image=../flag/flag.txt DOESNT WORK BECAUSE IT FILTERS ON THE .JPG


/image?image=a.jpg


## FLAG