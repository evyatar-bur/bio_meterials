function [raw_data ,clean_data] = load_and_smooth(file,sheet_letter)
% This function reads an excel file, from the requested sheet. 
% The outputs of the function are the raw and the clean data from the excel file. 

f = xlsread(file,sheet_letter);

raw_data = {f(:,1:2),f(:,4:5),f(:,7:8)};
clean_data = raw_data;

for i = 1:3
    clean_data{1,i}(:,2) = smoothdata(raw_data{1,i}(:,2));
end


end