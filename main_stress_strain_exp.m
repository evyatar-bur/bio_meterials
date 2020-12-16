%% main_stress_strain_exp
clear
clc
close all
% our data set - H

% Reading the data and filtering noise
[raw_data ,clean_data] = load_and_smooth('MATLAB data part 1','H');

% Plotting the clean data

% plot 1
figure(1)
plot(clean_data{1,1}(:,1),clean_data{1,1}(:,2))

% plot 2
figure(2)
plot(clean_data{1,2}(:,1),clean_data{1,1}(:,2))

% plot 3
figure(3)
plot(clean_data{1,3}(:,1),clean_data{1,1}(:,2))