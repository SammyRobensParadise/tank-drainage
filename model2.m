% time taken for a tank to drain
% length of pipe segment
Length={0.2,0.3,0.4,0.6};
f=0.017;
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
for i=1:length(Length)
    disp('---------')
    t=(A_tank/A_pipe)*(sqrt(((2*((4*f*Length{i}/d)+k)))/g))*(sqrt(Z_1+Z_2+(Length{i}/150))-sqrt(Z_2+(Length{i}/150)));
    disp(Length{i});
    time=seconds(t);
    time.Format='hh:mm:ss';
    disp(time);
    disp('---------')
end
% final equation

