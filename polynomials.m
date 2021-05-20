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
