%This function returns the saturation vapor pressure, es.

function es = saturation_vapor_pressure(T)
    e0 = 611; %Pa
    T0 = 273.15; %K
    T_k = T + 273.15; %K
    Rv = 462; %J kg^-1 K^-1;
    L = 2.5E6; %J kg^-1;
    es = e0 .* exp((L./Rv).*((1./T0)-(1./T_k)));
end