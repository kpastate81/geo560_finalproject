%This function returns the lifting condensation level temperature using RH

function T_L = LCL_temp_RH(T,RH)
    T_k = 237.15 + T;
    T_L = (1./((1./(T_k-55))-(log(RH./100)./2840))) + 55;
end