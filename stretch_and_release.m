function [strain_difference] = stretch_and_release(signal,stretch_value)
% stretch_and_release function computes the strain difference after stretching
% the meterial to the given value, and plots the signal

% Find E modulus
[E_modulus, ~] = find_E_modulus(signal);

% Finding the index of the given stretch, to find the matching stress
point_ind = abs(signal(:,1)-stretch_value) < 0.0001;

% Calculating the strain difference, using the relation: (plastic strain = strain - elastic strain)
% and the relation: (elastic strain = stress/E modulus)
strain_difference = stretch_value - ((signal(point_ind,2)*(10^6))/E_modulus);

% Plotting the signal, and the release line 
plot(signal(:,1),signal(:,2))
hold on
plot([strain_difference,stretch_value],[0,signal(point_ind,2)],'LineStyle','--')
plot([stretch_value,stretch_value],[0,signal(point_ind,2)],'LineStyle','--')

title('Stretch and release curve, part C')
xlabel('Strain')
ylabel('Stress [MPa]')

end

