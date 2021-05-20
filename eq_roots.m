x = linspace(-3,3,100);
f = 'sin(exp(x))';
plot(x,eval(f),x,0*x,':');
grid on
z = ginput(1);
[zr,fr] = fzero(f,z(1))
hold on
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off

%%
x = linspace(0,2*pi,100);
f = 'sin(x.*(1-x))';
plot(x,eval(f),x,0*x,':');
grid on
z = ginput(1);
[zr,fr] = fzero(f,z(1))
hold on
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off

%%
x = linspace(0,4*pi,100);
f = 'x.*sin(x) - cos(x)';
plot(x,eval(f),x,0*x,':');
grid on
z = ginput(1);
[zr,fr] = fzero(f,z(1))
hold on
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off

%%
x = linspace(0,4*pi,100);
f = '5*exp(-0.1*x).*sin(x) - 0.1*x';
plot(x,eval(f),x,0*x,':');
grid on
z = ginput(2);
[zr,fr] = fzero(f,z(2))
hold on
plot(zr,fr,'r*',z(2),z(4),'g*');
hold off

%%
syms x
f = x*x + 1;
solve(f)
