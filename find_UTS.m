function [UTS] = find_UTS(signal)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

[~,UTS_ind] = max(signal(1:length(signal(:,1),2));

UTS = signal(UTS_ind,:);

end

