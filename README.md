# Course3Project

Summary: 
Briefly, this script does the following:
1) Averages all the data points for each measurement into a single variable, 
2) Combines test data and train data into a single file
3) Group data by individual subjects and returns the avaraged data for each measurement.


Details (run_analysis.R):

row5: adding new column "id" to each file, so as to merge different file stogether based on "id"
row9 and 11: re-organization to get averaged reads
rows 13-80: repeating for each file in "test" folder
rows 85-152: repeating for each file in "train" folder
rows 161-164: changing column name to "subject" for both test and train files in order to merge
rows 169-173: removing unnecessary columns
row 176: grouping file by subject
row 177: summarizing data by generating average for each column
rows 180-184: generation of tidydataset.txt



