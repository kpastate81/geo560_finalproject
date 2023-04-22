%This function returns the equivalent potential temperature based
%on Bolton 1980

function theta_e = equiv_potential_temp(T,P,RH)
    r = mixing_ratio(T,RH,P).*1000;
    theta = potential_temp(T,P);
    T_L = LCL_temp_RH(T,RH);
    theta_e = theta .* exp(((3.376./T_L) - 0.00254) .* r.*(1+0.81.*10.^-3.*r));
end