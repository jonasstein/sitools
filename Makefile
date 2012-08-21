packagename = sitools

check :
	R CMD check $(packagename)

test : check

build : 
	R CMD build $(packagename)

# upload is only for the maintainer.
upload : 
	lftp -f upload.lftp

clean : 
	rm -dR $(packagename).Rcheck

purge : clean
	rm -f  $(packagename)*.tar.gz

