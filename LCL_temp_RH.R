LCL_temp_RH <- function(Temp,
                          RH) {
  #This function returns the the lifting condensation level temperature using RH
  T_K = Temp+273.15 #K
  T_L <- (1/((1/(T_K-55))-(log(RH/100)/2840)))+55
  return(T_L)
}

