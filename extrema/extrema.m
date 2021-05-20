x = linspace(0,2*pi,100);
f = exp(-0.1*x.^2)+cos(x.^2);
plot(x,f);
grid on
[x_m,y_m] = fminbnd(@extr,1,2)

%%
x = linspace(0,2*pi/3,100);
f = 1./(1*cos(x)+2*sin(x)).^2;
plot(x,f);
grid on
[x_m,y_m] = fminbnd(@extr1,1,2)

%%
x = linspace(0,4,100);
f = 2-abs(x).*exp(-abs(x-1));
plot(x,f);
grid on
[x_m,y_m] = fminbnd(@extr2,0,2)

%%
x = linspace(0,1,100);
a = 4;
f = x.^a.*log(x);
plot(x,f);
grid on
[x_m,y_m] = fminbnd(@extr3,0,1)

%%
x = linspace(-1,1,100);
a = 3; b = 7;
f = x.^a.*exp(-1*b.*x);
plot(x,f);
grid on
[x_m,y_m] = fminbnd(@extr4,-1,1)