saturation_vapor_pressure <- function(Temp) {
  #This function returns the saturation vapor pressure, es.
  e0 = 611 #Pa
  T0 = 273.15 #K
  cp = 1005.7 #Jkg-1K-1
  Rv = 462 #J kg^-1 K^-1;
  L = 2.5E6 #J kg^-1;
  T_K = Temp+273.15 #K
  es <- e0 * exp((L/Rv)*((1/T0)-(1/T_K)))
  return(es)
}
