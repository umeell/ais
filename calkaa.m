%   4
%---------e^-2.5s
%  s(s+10)
l=4;
m=conv([1 0],[1 10]);
t=0:0.01:30;
[lh mh]=pade(2.5,8);
lg=conv(l,lh);
mg=conv(m,mh);
y=step(lg,mg,t);
plot(t,y);

a=0.4;
b=-1;

Tc=1/a;
tau=-b/a;

[lp mp]=pade(tau,8);
la=lp;
ma=conv([Tc 0],mp);
ya=step(la,ma,t);
figure
plot(t,y,t,ya);
