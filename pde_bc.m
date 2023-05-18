function [pl,ql,pr,qr] = pde_bc(xl,ul,xr,ur,t)
pl=[ul(1)-50;ul(2)-200];
ql=[0;0];
pr=[ur(1)-30;ur(2)-40];
qr=[0;0];
end