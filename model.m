% time taken for a tank to drain
% length of pipe segment
Length={0.2,0.3,0.4,0.6};
FrictionFactor=0.00;
% initial height of water
Z_1=0.08;
% water left in tank after drainage
Z_2=0.02;
% total height
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
% coefficient of friction;
% density of water
roe=998;
u=1.003E-3;
% equation is of form:
% t= (A-B)/(C*D)
for L=1:length(Length)
    disp('---------')
    disp(Length{L});
    % vertical drop of the pipe
    Z_3=Length{L}/150;
    Z_tot=Z_1+Z_2+Z_3;
    Re=(roe*sqrt((2*g)*((Length{L}/150)+Z_1+Z_2)*d))/u;
    A=2*sqrt(Z_2+Z_3);
    B=2*sqrt(Z_tot);
    C=(-1)*(A_pipe/A_tank);
    D=sqrt((2*g)/(1+(((Length{L}*FrictionFactor)/d)+k)));
    t=(A-B)/C*D;
    disp(t/60);
    disp(Re)
    disp('---------')
end
% final equation

