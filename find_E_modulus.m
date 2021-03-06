function [E_modulus, yield] = find_E_modulus(signal)
% find_E_modulus function recieves a signal of a strain and stress
% experiment, and returns the material's yeild point and E modulus value.

% to find the end of the elastic range we use diff to evaluate the second derivative 
sec_der = diff(diff(signal(:,2)));


% Index of the yeild point
yield_ind = find(abs(sec_der) > 1, 1 )+ 1;
yield = signal(yield_ind,:);


% At the elastic range : E = stress/strain
% We use the yield point to calculate E modulus
E_modulus = (yield(1,2)*(10^6))/yield(1,1);
    
    
end

