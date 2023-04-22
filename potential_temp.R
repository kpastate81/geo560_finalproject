potential_temp <- function(Temp,
                           P) {
  #This function returns the temperature a parcel of dry air would
  #have if brought adiabatically to a standard pressure level of 1000 mb.
  P0 = 1000 #hPa
  R = 287.04 #Jkg-1K-1
  cp = 1005.7 #Jkg-1K-1
  T_K = Temp+273.15 #K
  theta <- T_K*((P0/P)^(R/cp))
  return(theta)
}



