function fatigue = Fatigue(x)

load netDy.mat
load net1.mat
Dy=abs(sim(netDy,x(1:17)'));
Dy=Dy/2;
sigma_max=abs(sim(net1,Dy))./10^6;

fatigue=(1/2)*((sigma_max/690)*sqrt(1))^(1/-0.0705);