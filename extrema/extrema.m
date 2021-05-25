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


%% UPDATED
x = linspace(0,1,100);
a = [2; 4; 8; 12; 18];
f = x.^a.*log(x);
plot(x,f)
grid on
hold on
for i = 1:length(a)
    y = @(x) x.^a(i).*log(x);
    x_m(i) = fminbnd(y,0,1);
plot(x_m(i),y(x_m(i)),'*')
end
hold off

%%
x = linspace(-1,1,1000000);
a = [0; -0.1; 0.3];
b = [1; 0; -1];
f = x.^a.*exp(-1*b.*x);
plot(x,f);
grid on
hold on
for i = 1:length(a)
    y = @(x) x.^a(i).*exp(-1*b(i).*x);
    x_m(i) = fminbnd(y,-0.3,0.3);
    plot(x_m(i),y(x_m(i)),'*')
end
hold off
