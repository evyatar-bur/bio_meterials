function Plot_data(raw_data,clean_data, yield, UTS, failure)
% Plot_data recieves the required data, and plots it on one plot

plot(raw_data(:,1),raw_data(:,2))
hold on

plot(clean_data(:,1),clean_data(:,2))

scatter(yield(1),yield(2))
scatter(UTS(1),UTS(2))
scatter(failure(1),failure(2))

legend('Raw data','Clean data','Yield point','UTS point','Failure point','Location','south')

xlabel('Strain')
ylabel('Stress [MPa]')

end

