NOTE TO REVIEWERS:

I originally enrolled in the March course but forgot to submit on time.
Thus, I had to retake the course in May. That is why you will find my last commit for the code last March.
Thank you!

# GCDCourseProject
Course project for the getting and cleaning data Coursera course.

The script for executing the assignment is run_analysis.r
The code book is codebook.md

The script is extensively commented, and I marked the beginning and end of each
step that was required for the assignment.

Basically, what happens is:

- I load the "label" datasets for activity & feature names
- I load the 3 data files for the test set
- I merge these files into a full, friendly test set
- I repeat the above for the training set
- I merge the test & training sets
- I then find the variable names that contain either "mean" or "std"
- I extract a new dataset with the columns that match the above rule
- I do some column name cleanup
- I generate the final, mean summary set and write it to a file



