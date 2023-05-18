function [c,f,s] = pde_he(x,t,u,DuDx)
rho = [992.8 , 850];
cp = [4180 , 2280];
k1 = 0.631;
k2 = 0.125;
U = 800;
d=0.02;
D=0.667;
As = pi*D^2/4; 

c = [1 ; 1];
f = [-(k1/(rho(1)*cp(1))); -k2/(rho(2)*cp(2))].*DuDx;
s = [(4*U)*(u(2)-u(1))/(rho(1)*cp(1)*d) ; - U*pi*D*(u(2)-u(1))/(rho(2)*cp(2)*As)];

end