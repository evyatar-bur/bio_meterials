function [raw_data ,clean_data] = load_and_smooth(file,sheet_letter)
% This function reads an excel file, from the requested sheet. 
% The outputs of the function are the raw and the clean data from the excel file. 

f = xlsread(file,sheet_letter);

raw_data = {f(:,1:2),f(:,4:5),f(:,7:8)};


for i = 1:3
    
    end_ind = (find(isnan(raw_data{1,i}(:,2)),1)-1);
    if end_ind>1
        raw_data{1,i} = raw_data{1,i}(1:end_ind,:);
    end
    
end

clean_data = raw_data;

for i = 1:3
    
    clean_data{1,i}(:,2) = smoothdata(raw_data{1,i}(:,2));

end

end