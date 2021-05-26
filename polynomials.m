P = [1 -3.55 5.1 -3.1];
x = linspace(0,2,100);
F = polyval(P,x);
plot(x,F)
grid on

%%
M = [2 -3 4 -5 6];
[q1,r1] = deconv(K,[1 -3 1])
N = [1 -3 -1 -1];
[q2,r2] = deconv(M,[3 -2 1])

%%
P = [1 -2 6 -10 16];
disp(polyval(P,4))
F = polyder(P);
disp(polyval(F,4))
%%
P = [1 1+2i 0 -1-3i 0 7];
disp(polyval(P,-2-1i));
F = polyder(P);
disp(polyval(F,-2-1i))

%%
P = [1 4 1 -6];
[r, p, k] = residue([1 0 0], P)
%%
P = [1 1 -1 -1];
[r, p, k] = residue([1 3], P)
%%
P = [1 0 0 0 -1];
[r, p, k] = residue([1 0 0], P)


%% UPDATED
n = input("Enter the number");
y = x.^(2*n)-n*x.^(n+1)+n*x.^(n-1)-1;
disp(roots(y));
plot(x,y)
grid on
ylim([-5 5])

%%
x = linspace(1,20,100);
P = 1./x;
r = roots(P);
x1 = linspace(min(r),max(r),100);
if imag(r) == 0
    plot(x1,P)  
    grid on
else
    disp("roots are complex")
end
%%
x = [-1 0 1 2 3];
y = [6 5 0 3 2];
xP = -1:0.01:3;
P = interp1(x,y,xP,'spline');
plot(xP,P)
grid on

%%
n = input("Enter the number");
M = randi(n,n);
disp("Answer:")
if poly(M) == charpoly(M)
    disp("yes!!!")
else
    disp("no :(")
end

%%
f = [1 2 -1 -4 -2];
g = [1 1 -1 -2 -2];
[G,S,T] = gcd(f,g);
disp("Greatest common divisor G");
disp(G);
disp("Linear combination S,T");
disp(S); disp(T)
%%
f = [1 3 1 1 3 1];
g = [0 1 2 0 1 2];
[G,S,T] = gcd(f,g);
disp("Greatest common divisor G");
disp(G);
disp("Linear combination S,T");
disp(S); disp(T)
