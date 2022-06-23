[lp, mp] = pade(1,8);
lo = lp;
mo = conv(mp, conv([0 8 0], conv([3 1],[2 1])));
t = 0:0.001:20;
yo = step(lo, mo, t);
plot(t,yo),grid;

[t' yo];
y1 = ;
t1 = ;
y2 = ;
t2 = ;
a = (y2-y1)/(t2-t1);
Tc = 1/a;
b = y1 - a*t1;
tau = -b/a;
[lpa, mpa] = pade(tau,8);
ya = step(lpa, Tc*[mpa 0],t);
plot(t,ya,t,yo),grid;

T1 = 5*tau;
T2 = tau/2;

Ti = T1+T2;
Td = T1*T2/Ti;

kbezp = (0.73*Tc)/tau;
P = kbezp
I = kp/Ti
D = kp*Td
