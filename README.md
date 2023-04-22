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
Give the example
```

## Details

It is important that the function is saved within the same folder or directory of the main script where you wish to call the function. To use the Matlab and R versions of equivalent potential temperature script, you must also save the three additional scripts included in the directory for the environment in which you are analyzing the data. The necessary functions for the equivalent potential temperature are: potential_temp.m, mixing_ratio.m, and LCL_temp_RH.m and in addition to equiv_potential_temp.m need to be stored where the main script is saved. Provided below are brief descriptions of all scripts provided in this directory. 

Note: if using Matlab enviornment, only download and save the .m files and if using R environment, only download and use the .R files.  

### Matlab (R)

#### potential_temp.m (potential_temp.R)

This script computes the temperature a parcel of dry air woukd have if brought adiabatically to a standard pressure level of 1000 mb. Inputs are temperature (T), given in °C and pressure (P), given in hPa. It can be used as a standalone function for mixing ratio computation and is required for use of equiv_potential_temp.m. When used as standalone, output is the potential temperature given in Kelvin.

#### mixing_ratio.m (mixing_ratio.R)

This function returns the mixing ratio using water vapor pressure defined as e. It requires inputs of temperature (T), given in °C, relative humidity (RH), given as a percentage, and Pressure (P), given in hPa. It can be used as a standalone function for mixing ratio computation and is required for use of equiv_potential_temp.m. When used as a standalone, ouput is the mixing ratio in g/kg.

#### LCL_temp_RH.m (LCL_temp_RH.R)

This function returns the lifting condensation level temperature using RH. Inputs are temperature (T), given in °C and relative humidity (RH) given as a percentage. It can be used as a standalone function for lifting condensation level temperature and is required for use of equiv_potential_temp.m. When used as a standalone, ouput is the temperature in degree Kelvin. 

#### equiv_potential_temp.m (equiv_potential_temp.R)

This function returns the equivalent potential temperature based on Bolton (1980). The potential_temp.m (potential_temp.R), mixing_ratio.m (mixing_ratio.R), and LCL_temp_RH.m (LCL_temp_RH.R) are required for using this function. The inputs are temperature (T) in °C, Presssure (P) in hPa, and relative humidity (RH) given as a percentage. The output in the temperature (in Kelvin) that a parcel at the specific pressure and temperature provided would have if it were raised to 0 mb and all the water vapor in the parcel were to be condensed, and the parcel was brought to standard sea-level pressure (1000 hPa).

## Configuration

### Matlab

```
%Variables:
T = 12.8; %°C
P = 1008.2; %hPa
RH = 83; %

theta_e = equiv_potential_temp(T,P,RH);

```

### R
