syms T_tubes(z)
syms T_shell(z)
rho1 = 992.8;                   % density of hot water (kg/m^3)
Cp1 = 4180;                     % specific heat capacity of hot water (J/kg*K)
d = 0.02;                       % diameter of tube (m)
u1 = 0.02747/(pi*(d^2)/4);      % velocity of hot water (m/s)
rho2 = 850;                     % density of oil (kg/m^3)
Cp2 = 2280;                     % specific heat capacity of oil (J/kg*K)
D=0.667;                        % diameter of shell (m)                                    
u2 = 0.00735/(pi*(D^2)/4);      % velocity of cooling water (m/s)

k1 = 0.631;
L = 4;                          % length of tube (m)
As = pi*0.667^2/4;
U=800;                          % Overall Heat Transfer coefficient (W/(m^-2 C^-1))

DT_tubes = diff(T_tubes);
ode_1=diff(T_tubes,z,2)== ((U*4)/(rho1*Cp1*d*k1))*(150);
cond_Adash = T_tubes(0) == 50;
cond_Bdash = DT_tubes(0) == 0;
conds_1 =[cond_Adash cond_Bdash];
tubessolve(z)= dsolve(ode_1,conds_1)


DT_shell = diff(T_shell);
ode_2=diff(T_shell,z,2)== ((U*pi*D)/(rho2*Cp2*As*k1))*(150);
cond_A = T_shell(0) == 200;
cond_B = DT_shell(0) == 0;
conds_2 =[cond_A cond_B];
shellsolve(z)= dsolve(ode_2,conds_2)


