[x,y] = meshgrid(-5:0.01:5,-5:0.01:5);
a = 12; b = 34; c = 56; d = 78;
z = -(a*x + b*y + d)/c;
surf(x,y,z)
  
%%
[x,y] = meshgrid(-5:0.01:5,-5:0.01:5);
a = 19;
z = a.*sin(sqrt(x.^2 + y.^2))./sqrt(x.^2 + y.^2);
plot3(x,y,z)
  
%%
[x,y] = meshgrid(-5:0.01:5,-5:0.01:5);
z = -x.*sin(x) - y.*cos(y);
mesh(x,y,z)
  
%%
[x,y] = meshgrid(-5:0.01:5,-5:0.01:5);
z = a.*x.*exp(-x.^2 - y.^2);
surf(x,y,z)
  
%%
[u,v] = meshgrid(0:0.5:10,0:pi/12:2*pi);
a = 33; b = 55;
x = (a + b.*cos(v)).*cos(u);
y = (a + b.*cos(v)).*sin(u);
z = b.*sin(v);
surfc(x,y,z)
  
%%
[u,v] = meshgrid(0:pi/12:2*pi,-pi/2:pi/12:pi/2);
a = 12; b = 6;
x = a.*cos(u).*cos(v);
y = a.*sin(u).*cos(v);
z = b.*sin(v);

%%
a = -3; c = 5;
[alpha,beta] = meshgrid(-1:0.1:1,0:0.1:2*pi);
x = a*cosh(alpha).*cos(beta);
y = a*cosh(alpha).*sin(beta);
z = c*sinh(alpha);
surf(x,y,z)

%%
p = 7;
[r,beta] = meshgrid(0:1:10,0:0.1:2*pi);
x = r.*cos(v);
y = r.*sin(v);
z = r.^2./(2*p);
surf(x,y,z)

mesh(x,y,z)
  
%%
[x,y] = meshgrid(-1:0.01:1,-1:0.01:1);
a = pi;
r = sqrt(x.^2 + y.^2);
z = ((2.*besselj(1,a.*r)./r)).^2;
mesh(x,y,z)

%% UPDATED
t = 0:0.01:6*pi; t0 = 7*pi/2;
x = sin(t);
y = 2*cos(t);
x0 = sin(t0);
y0 = 2*cos(t0);
plot3(x,y,t)
hold on
grid on
xlabel('x'); ylabel('y'); zlabel('z');
plot3(x0,y0,t0,'*')
line([-1,x0],[-2,y0],[0,t0])
hold off

%%
z = 20-x.^2-y.^2;
Lx = linspace(-pi,pi,40);
Ly = linspace(-pi,pi,50);
[x,y] = meshgrid(Lx,Ly);
surfc(x,y,z);
xlabel('x'); ylabel('y'); zlabel('z');
hold on

x0 = 0; x1 = 2*x0;
y0 = -1; y1 = 2*y0;
z0 = 20-x0.^2-y0.^2; z1 = 1;
plot3([x0,x1],[y0,y1],[z0,z1])

R = 0.1; fi = 0:0.01:6*pi;
r = R*fi;
x2 = r.*cos(fi);
y2 = r.*sin(fi);
z2 = 20-x2.^2-y2.^2;
z3 = zeros(length(z2));
plot3(x2,y2,z2,"Color",'black')
plot3(x2,y2,z3,"Color",'black')
hold off
