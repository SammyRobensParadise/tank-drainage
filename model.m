% time taken for a tank to drain
% length of pipe segment
Length=[0.2 0.3 0.4 0.6];
% initial height of water
Z_1=0.08;
% water left in tank after drainage
Z_2=0.02;
% vertical drop of the pipe
Z_3=L/150;
% total height
Z_tot=Z_1+Z_2+Z_3;
% cross-sectional area of tank
A_tank=0.32*0.26;
% diameter of pipe
d=0.00794;
% cross sectional area of pipe
A_pipe=(pi*(d)^2)/4;
% acc. gravity
g=9.81;
% coeff. of losses. Since it is going
% from a big cylinder to a small one, D>d, so k is 0.42
k=0.42;
% coefficient of friction (TEST VALUES);
f=6.5;
% equation is of form:
% t= (A-B)/(C*D)
for L=1:length(Length)
    disp(Length(L));
    A=2*sqrt(Z_2+Z_3);
    B=2*sqrt(Z_tot);
    C=(-1)*(A_pipe/A_tank);
    D=sqrt((2*g)/(1+((Length(L)*f/d)+k)));
    t=(A-B)/C*D;
    disp(t/60);
end
% final equation

