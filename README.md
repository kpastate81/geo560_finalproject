# Geo560 Final Project: An Equivalent Potential Temperature Function for Matlab and R

This directory contains functions developed to compute the eqivalent potential temperature for meteorological data analysis in a Matlab and R environment. 

## Getting Started

These instructions will get you a copy of the functions up and running on your local machine for analytical purposes. 

### Prerequisites

#### Matlab

1. Matlab_R2022a or later intalled and running
2. Download and unzip all .m files included in the repository

#### R 

1. RStudio installed and running
2. Download and unzip all .R files included in the repository

### What is a Function?

Functions are small scripts of code that allow for reiterative use. They run faster than scripts and avoid storing temporary variables in the base workspace. Functions provide more flexibility and efficiency for data analysis.

The following shows examples of the potential temperature function in both Matlab and R. The potential temperature is the temperature an unsaturated parcel would have if lowered (or raised) to a level of 1000 mb.

#### Matlab

```

%This function returns the temperature a parcel of dry air woukd
%have if brought adiabatically to a standard pressure level of 1000 mb.

function theta = potential_temp(T,P)
    P0 = 1000;
    R = 287.04; %Jkg-1K-1
    cp = 1005.7; %Jkg-1K-1
    T_K = T + 273.15;
    theta = T_K.*((P0./P).^(R./cp));
end

```

#### R 

```
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
```

## Details

It is important that the function is saved within the same folder or directory of the main script where you wish to call the function. To use the Matlab and R versions of equivalent potential temperature script, you must also save the five additional scripts included in the directory for the environment in which you are analyzing the data. 

### Matlab

Necessary functions for computing  equivalent potential temperature using the equiv_potential_temp.m script in the Matlab Enviornment: 
* potential_temp.m
* saturation_vapor_pressure.m
* water_vapor_RH.m
* mixing_ratio.m
* LCL_temp_RH.m

### R

The necessary functions for computing equivalent potential temperature using the equiv_potential_temp.R script in an R Enviornment: 
* potential_temp.R
* saturation_vapor_pressure.R
* water_vapor_RH.R
* mixing_ratio.R
* LCL_temp_RH.R

In addition to equiv_potential_temp.m(R) file, the aformentioned .m or.R scripts need to be stored where the main script that will be calling the function(s) is saved. Provided below are brief descriptions of all functions provided in this directory and used in the calculation of equivalent potential temperature. 

Note: if using Matlab enviornment, only download and save the .m files and if using R environment, only download and use the .R files.  

#### potential_temp.m (potential_temp.R)

This function computes the temperature a parcel of dry air woukd have if brought adiabatically to a standard pressure level of 1000 mb. Inputs are temperature (given in °C) and pressure (given in hPa). It can be used as a standalone function for mixing ratio computation and is required for use of equiv_potential_temp.m. When used as standalone, output is the potential temperature given in Kelvin.

#### saturation_vapor_pressure.m (saturation_vapor_pressure.R)

This function returns the saturation vapor pressure (es), that is, the vapor pressure of a system that has attained saturation but not supersaturation. Temperature (in °C) is the only input required. It can be used as a standalone function for saturation vapor pressure computation and it is required for use of equiv_potential_temp.m. When used as standalone, output is given in Pa.

#### water_vapor_RH.m (water_vapor_RH.R)

This function returns the water vapor pressure (e) relative to the temperature of the air. Inputs required are Temperature (in °C) and relative humidity (as a percentage). It can be used as a standalone function for computation of water vapor pressure and it is required for use of equiv_potential_temp.m. When used as standalone, output is given in Pa.

#### mixing_ratio.m (mixing_ratio.R)

This function returns the mixing ratio using water vapor pressure defined as e. It requires inputs of temperature (given in °C), relative humidity (given as a percentage), and Pressure (given in hPa). It can be used as a standalone function for mixing ratio computation and is required for use of equiv_potential_temp.m. When used as a standalone, ouput is the mixing ratio in g/kg.

#### LCL_temp_RH.m (LCL_temp_RH.R)

This function returns the lifting condensation level temperature using RH. Inputs are temperature (given in °C) and relative humidity (given as a percentage). It can be used as a standalone function for lifting condensation level temperature and is required for use of equiv_potential_temp.m. When used as a standalone, ouput is the temperature in degree Kelvin. 

#### equiv_potential_temp.m (equiv_potential_temp.R)

This function returns the equivalent potential temperature based on Bolton (1980). The potential_temp.m (potential_temp.R), saturation_vapor_pressure.m (saturation_vapor_pressure.R), water_vapor_RH.m (water_vapor_RH.R), mixing_ratio.m (mixing_ratio.R), and LCL_temp_RH.m (LCL_temp_RH.R) are required for using the equiv_potential_temp.m (equiv_potential_temp.R) function. The inputs are temperature (in °C), Presssure (in hPa), and relative humidity (given as a percentage). The output is temperature (in Kelvin) that a parcel at the provided pressure and temperature would have if it were raised to 0 mb and all the water vapor in the parcel were to be condensed, and the parcel was brought to standard sea-level pressure (1000 hPa).

## Configuration

### Matlab

Once all .m files are saved in working directory, can call functions from consol or in main script for computations.

```
%Variables:
T = 12.8; %°C
P = 1008.2; %hPa
RH = 83; %

theta_e = equiv_potential_temp(T,P,RH);

```

### R

Be sure to first run all .R function files so they are loaded within the working enviornment.

<img width="369" alt="image" src="https://user-images.githubusercontent.com/122836096/233811581-b45fd7f5-79aa-4c02-9820-83edee1ad55f.png">

```
#Variables:

Temp = 12.8 #°C
P = 1008.2 #hPa
RH = 83 #%

equiv_potential_temp(Temp,P,RH)

```
