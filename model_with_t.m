% time taken for a tank to drain
% length of pipe segment
Length={0.2,0.3,0.4,0.6};
% length of T-joint segment (m)
l=0.04;
% coeff. of friction in pipe
f_pipe=0.017;
% coeff of friction in T-joint
f_tJoint=0.027;
% initial height of water
Z_1=0.08;
% water left in tank after drainage
Z_2=0.02;
% total height
% cross-sectional area of tank
A_tank=0.32*0.26;
% diameter of pipe
D=0.00794;
% diameter of t-joint section
d=0.0111125;
% cross sectional area of pipe
A_pipe=(pi*(D)^2)/4;
% cross sectional area of T-joint
A_tJoint=(pi*(d)^2)/4;
% acc. gravity
g=9.81;
% coeff. of losses (KL). Since it is going
% from a big cylinder to a small one, D>d, so k is 0.42
k_L=0.42;
% coefficient of losses going from main pipe to t-joint
k_l=0.42*(1-((d^2)/(D^2)));
% density of water
roe=998;
% kinematic viscocity of water
u=1.003E-3;

for i=1:length(Length)
    disp('---------')
    disp(Length{i});
    Z_3=Length{i}/150;
    Re=(roe*sqrt((2*g)*(Z_1+Z_2+Z_3))*d)/u;
    t=(A_tank/A_tJoint)*(sqrt(Z_1+Z_2+Z_3)-sqrt(Z_2+Z_3))*sqrt((1+(Length{i}*f_pipe/D)+(2*l*f_tJoint/d)+k_L+k_l)/2*g);
    time=seconds(t);
    time.Format='hh:mm:ss';
    disp(time);
    disp(Re)
    disp('---------')
end
% final equation

