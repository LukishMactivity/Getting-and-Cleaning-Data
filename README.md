# Getting-and-Cleaning-Data
## Practical assignment Coursera week 4
Here you'll find two files: `analysis.R` which includes downloading and exracting the .zip files to the working directing and a commentary throughout, and  `codebook.md` provides an overview of the procedure and variable descriptions explaining the attributes of the column names.

You will notice the data is tidy as there is only one variable per column.  Additionally, the first 'Actvity' variable has been given descriptive character names in place of the original numeric values, e.g. "1" is now "Walking".  Also, see the codebook for a clear desciptive breakdown of the remaining column names.

Here is the code to read the tidy.txt file into your 'R' environment: `tidydata <- read.table("tidy.txt", header = TRUE)`

Thanks go to David Hood for his commentary on the assignment available at: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
