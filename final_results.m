clc 
clear
% GIVEN
T_hotin = 200;
T_hotout = 40;

T_coldin = 30;
T_coldout = 50;
U = 800;
D = 0.02;
L = 4;
Mhot = 6.25;         % mass of gas oil in kg/s
cphot = 2280;        % J/(kgC)

Q = Mhot*cphot*(T_hotin - T_hotout)

T_LMTD = ((T_hotin - T_coldout) - (T_hotout - T_coldin))/(log((T_hotin- T_coldout)/(T_hotout - T_coldin)))

% for correction factor

R = (T_hotin - T_coldout)/(T_coldout - T_coldin)
S = (T_coldout - T_coldin)/(T_hotin - T_hotout)

% from curve
Ft = 0.94;

T_LMTDcorrected = T_LMTD * Ft 

Required_Area = Q/(U*T_LMTDcorrected)
NO_of_tubes = Required_Area/(pi*D*L)