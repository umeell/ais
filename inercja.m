Lo = 1.5;
Mo = conv([4 4 1],[0 0.5 1]);
t = 0:0.01:25;
yo = step(Lo, Mo, t);
plot(t,yo),grid;
max(yo)
ko = max(yo);
yn = yo/ko;
plot(t,yn),grid;
[M, i]= max(diff(yn));
[t' yn]
t90 = 
t10 = 
T = (t90-t10)/3.3;
tau = t10 - 0.53*T;
[lpa,mpa]=pade(tau,8);
la=conv(lpa,ko);
ma=conv(mpa,conv([T 1],[T 1]));
ya=step(la,ma,t);
plot(t,yo,t,ya),grid;

kp = (0.68*T)/(ko*tau);
Ti = 2*T;
Td = Ti/4;

P = kp;
I = kp/Ti;
D = Td*kp;
