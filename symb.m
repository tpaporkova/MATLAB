syms x
P = x^5+4*x^4-2*x^3-14*x^2-3*x-18;
factor(P)
%%
syms x y
P = x^3+x^2*y+x^2-2*x*y^2+x*y-2*y^2;
factor(P)
%%
syms x
f = x*exp(-x);
limit(f,x,inf)
%%
syms x
f = tan(x).^tan(2*x);
limit(f,x,pi/4)
%%
syms x
f = (7*x^3+x^2-1)/(5*x^2+2*x+1);
limit(f,x,inf)
%%
syms x
simplify(diff(atan(x)/2 - x./(2*(1+x.^2).^2)))
%%
syms x
simplify(diff(3*x^4 - 14*x^3+12*x^2+24*x+6))
%%
syms x
simplify(diff(1/6*log((x-3)/(x+3))))
%%
syms x
int((sqrt(1-x^2))/x^2)
%%
syms x
int(1/sin(x)^3)
%%
syms x
int(((sin(2*x)+1)^(1/7))*cos(2*x))
%%
syms n
symsum(1/(n+1)^2,n,0,inf)
%%
syms x
f = exp(x);
t = taylor(f,x,'Order',6);
disp(t);
taylortool(f)
%%
syms x
f = sin(x)^2;
t = taylor(f,x,0,'Order',11);
disp(t);
taylortool(f)
%%
syms t u
x = t*cos(u)*cos(u);
y = t^2*cos(u)*sin(u);
z = t^3*sin(u);
A = [diff(x) diff(y) diff(z); diff(x,2) diff(y,2) diff(z,2); diff(x,3) diff(y,3) diff(z,3)];
X = [diff(y) diff(z); diff(y,2) diff(z,2)];
Y = [diff(x) diff(z); diff(x,2) diff(z,2)];
Z = [diff(x) diff(y); diff(x,2) diff(y,2)];
kruch = det(A)/(det(X)^2+det(Y)^2+det(Z)^2)
kriv = (det(X)^2+det(Y)^2+det(Z)^2)/(diff(x)^2+diff(y)^2+diff(z)^2)^3