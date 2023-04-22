
%This function returns the temperature a parcel of dry air woukd
%have if brought adiabatically to a standard pressure level of 1000 mb.

function theta = potential_temp(T,P)
    P0 = 1000;
    R = 287.04; %Jkg-1K-1
    cp = 1005.7; %Jkg-1K-1
    T_K = T + 273.15;
    theta = T_K.*((P0./P).^(R./cp));
end


    