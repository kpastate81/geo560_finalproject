equiv_potential_temp <- function(Temp,
                           P,
                           RH) {
  #This function returns the equivalent potential temperature based on 
  #Bolton (1980)
  r = mixing_ratio(Temp,RH,P)*1000
  theta = potential_temp(Temp,P)
  T_L = LCL_temp_RH(T,RH)
  theta_e <- theta*exp(((3.376/T_L)-0.00254)* r*(1+0.81*10^-3*r));
  return(theta_e)
}


