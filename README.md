# fast API microservices python_template 
lib->mylib. .gitignore prevents use of lib
there is probably some old legacy reason for this, i.e. downloading sw used to install in lib like old java programs. 
so they put lib in .gitignore. 

this was before virtual environments and conda.

preprocessing test cases:
1) remove NA in all rows
2) pytest for NA removal
3) test for numeric, test for centering
4) test regression coefficients and verify pvalues, intercept and regression coefficients

apache flight: cli interface for streaming individual rows and columns


graphics test cases:
---------------------
plotting graph, double click and use div to move labels
adding legend
adding regression lines based on subsets(dropdown select other columns)
select Y and X attributes (one)
add X (add more predictors)


multiuser test cases:
---------------------
benchmark forms in react and how many can serve
flame graph
number of requests per second without db, with database insert into mongodb, dynamodb. 


backend: 
python flight server for pandas df

