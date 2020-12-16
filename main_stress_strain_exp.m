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

% Plotting the clean data

% plot 1
figure(1)
plot(clean_data{1,1}(:,1),clean_data{1,1}(:,2))

hold on
scatter(yield_1(1),yield_1(2))
scatter(UTS_1(1),UTS_1(2))

% plot 2
figure(2)
plot(clean_data{1,2}(:,1),clean_data{1,2}(:,2))

hold on
scatter(yield_2(1),yield_2(2))
scatter(UTS_2(1),UTS_2(2))

% plot 3
figure(3)
plot(clean_data{1,3}(:,1),clean_data{1,3}(:,2))

hold on
scatter(yield_3(1),yield_3(2))
scatter(UTS_3(1),UTS_3(2))





