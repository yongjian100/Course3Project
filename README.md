# Course3Project

Summary: 
Briefly, this script does the following:
1) Averages all the data points for each measurement into a single variable, 
2) Combines test data and train data into a single file
3) Group data by individual subjects and returns the avaraged data for each measurement.


Details (run_analysis.R):

row5: adding new column "id" to each file, so as to merge different file stogether based on "id"
row9 and 14: re-organization to get averaged reads
rows 17-76: repeating for each file in "test" folder
rows 121-189: repeating for each file in "train" folder
rows 233-239: changing column name to "subject" for both test and train files in order to merge
rows 245-255: removing unnecessary columns
row 258: grouping file by subject
row 259: summarizing data by generating average for each column
row 263: generation of tidydataset.txt



