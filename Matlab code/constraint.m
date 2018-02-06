function [c, ceq] =constraint(x)
load netfreq.mat
load netDy.mat
load netstress.mat
frequency=abs(sim(netfreq,x(1:17)'));
Dy=abs(sim(netDy,x(1:17)'))*.5;

c = [Dy-.0022;frequency-430;-frequency+390];
ceq = [];