mixing_ratio <- function(Temp,
                          RH,
                           P) {
  #This function returns the returns the mixing ratio using 
  #water vapor pressure e.
  e = (water_vapor_RH(Temp,RH))/100
  r <- 0.622*(e/(P-e))
  return(r)
}
