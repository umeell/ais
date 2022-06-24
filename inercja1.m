%     2.75
%--------------e^-0.6s
% (5s+0.9)(0.45s+1)^3

l=2.75;
m=conv(conv([5 0.9],[0.45 1]),conv([0.45 1],[0.45 1]));
t=0:0.01:50;
[lh mh]=pade(0.6,8);
lg=conv(l,lh);
mg=conv(m,mh);
y=step(lg,mg,t);
plot(t,y);

ko=max(y);
yn=y/ko;

[Ml i]=max(diff(yn));
h=yn(i); % I rząd;

[t' yn]
t90= 14.7900;
t10= 2.4000;

T=(t90-t10)/2.2;
tau=t10-0.1T;

[lp mp]=pade(tau,8);
la=conv(lp,ko);
ma=conv([T 1],mp);
ya=step(la,ma,t);
figure
plot(t,y,t,ya);

kp=(0.34T)/(tau*ko);
Ti=T;

P=kp;
I=kp/Ti;
