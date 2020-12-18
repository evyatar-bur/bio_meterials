function Plot_data(raw_data,clean_data, yield, UTS, failure)
% Plot_data recieves the required data, and plots it on one plot

% Plot raw data
plot(raw_data(:,1),raw_data(:,2))
hold on

% Plot clean data
plot(clean_data(:,1),clean_data(:,2))

% Mark the requested points
scatter(yield(1),yield(2),60)
scatter(UTS(1),UTS(2),60)
scatter(failure(1),failure(2),60)

% Add legend and axis labels
legend('Raw data','Clean data','Yield point','UTS point','Failure point','Location','south')
xlabel('Strain')
ylabel('Stress [MPa]')

end

