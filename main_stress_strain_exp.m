%% main_stress_strain_exp
clear
clc
close all
% our data set - H

% Reading the data and filtering noise
[raw_data ,clean_data] = load_and_smooth('MATLAB data part 1','H');

% Finding 
[E_modulus_1, yield_1] = find_E_modulus(clean_data{1,1});
[E_modulus_2, yield_2] = find_E_modulus(clean_data{1,2});
[E_modulus_3, yield_3] = find_E_modulus(clean_data{1,3});

% Finding
UTS_1 = find_UTS(clean_data{1,1});
UTS_2 = find_UTS(clean_data{1,2});
UTS_3 = find_UTS(clean_data{1,3});

% Finding

[failure_1] = find_failure(clean_data{1,1});
[failure_2] = find_failure(clean_data{1,2});
[failure_3] = find_failure(clean_data{1,3});

% Plotting the clean data

% plot 1
figure(1)
Plot_data(raw_data{1,1},clean_data{1,1}, yield_1, UTS_1, failure_1)
title('Stress-Strain curve - data set 1')

% plot 2
figure(2)
Plot_data(raw_data{1,2},clean_data{1,2}, yield_2, UTS_2, failure_2)
title('Stress-Strain curve - data set 2')

% plot 3
figure(3)
Plot_data(raw_data{1,3},clean_data{1,3}, yield_3, UTS_3, failure_3)
title('Stress-Strain curve - data set 3')







