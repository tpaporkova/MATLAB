phi = -2*pi:0.01:2*pi;
r = sin(phi)./phi;
polarplot(phi,r) 
%%
x = -15:0.01:15;
y = x + 1./x.^2;
plot(x,y)
xlim([-15 15])
ylim([-20 120])
%%
x = -5:0.01:5;
y = (2*x)./(1+x.^2);
plot(x,y)
xlim([-5 5])
ylim([-2 2])
%%
t = -5:0.01:5;
a = 1/2;
b = 1/3;
m = 7;
n = 17;
x = cos(t) + a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);
plot(x,y)
%%
x = -3:0.01:3;
y = 1./x + 1./(x-1) + 1./(x-2);
plot(x,y)
%%
x = -3:0.01:3;
y = sqrt(cos(pi*x.^2));
plot(x,y)
%%
x = -10:0.01:10;
y = acos(2*sin(x));
plot(x,y)
%%
phi = -2*pi:0.01:2*pi;
a = 2;
r = sqrt(2*a^2*cos(2*phi));
polarplot(phi,r)
%%
phi = -2*pi:0.01:2*pi;
a = 98;
R = 100;
r = 2*R*cos(phi) + a;
polarplot(phi,r)
%%
x = -10:0.01:10;
a = 2;
y = (a^3)./(a^2 + x.^2);
plot(x,y)
ylim([-2 3])