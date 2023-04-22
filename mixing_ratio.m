%This function returns the mixing ratio using water vapor pressure e

function r = mixing_ratio(T,RH,P)
    e = (water_vapor_RH(T,RH))./100;
    r = .622 .* (e./(P-e));
end