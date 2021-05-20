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
