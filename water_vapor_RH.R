water_vapor_RH <- function(Temp,
                           RH) {
  #This function returns the water vapor pressure (e) using RH.
  es = saturation_vapor_pressure(Temp)
  e <- (RH/100)*es;
  return(e)
}

