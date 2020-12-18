function [UTS] = find_UTS(signal)
% find_UTS finds the stress and strain values at the UTS point of the given signal

[~,UTS_ind] = max(signal(:,2));
UTS = signal(UTS_ind,:);

end

