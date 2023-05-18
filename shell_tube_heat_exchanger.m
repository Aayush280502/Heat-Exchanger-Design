clc;
clear;
m = 0;
x = linspace(0, 4, 50);
t = linspace(0, 3600, 100);
sol = pdepe(m,'pde_he','pde_ic','pde_bc',x,t);


T_tube = sol(:,:,1);                    %temperature tube side
T_shell = sol(:,:,2);                    %temperature shell side
subplot(2,1,1); 
surf(x,t,T_tube);
title('Tube Side Temperature (x,t)');
xlabel('distance(x)');
ylabel('Time(t)');
subplot(2,1,2);
surf(x,t,T_shell);

title('Shell Side Temperature(x,t)');
xlabel('distance (x)');
ylabel('Time(t)');
