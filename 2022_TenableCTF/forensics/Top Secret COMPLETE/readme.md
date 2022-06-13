## DESCRIPTION
We found some leaked classified documents. Can you figure out what the censored project name is?



## NOTES
pdftotext only recognized the Project: bit


Found this tool 
https://mupdf.com/docs/manual-mutool-extract.html
and apparently it exports the components of the pdf file into separate files

mutool extract sf703.pdf
warning: ICC support is not available
extracting image img-0005.png
extracting image img-0034.png
extracting font AAAAAB+CourierNewPSMT-0038.ttf 

The img-0034 cointains the flag

## FLAG
flag{rememb3r_t0_flatt3n_ur_PDF5}