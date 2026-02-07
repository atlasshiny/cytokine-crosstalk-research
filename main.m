%select the data file using the standard windows file viewer
[filename, pathname] = uigetfile('*.csv', 'Select dataset');
full_path = fullfile(pathname, filename);

%load data into matlab 
readtable(full_path)