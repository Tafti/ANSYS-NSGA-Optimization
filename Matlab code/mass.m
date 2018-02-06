function mass= mass(x)
denspeek=1450;
length=.254;
load netArea.mat
Area=abs(sim(netArea,x(15)));

mass=Area*denspeek*length;