%This function returns the water vapor pressure, e, using RH.

function e = water_vapor_RH(T,RH)
    es = saturation_vapor_pressure(T);
    e = (RH./100).*es;
end