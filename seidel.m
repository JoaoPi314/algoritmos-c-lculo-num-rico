%Método de jacobi

clear; clear all; clc;

A = [78 , -15 , -13, -7;
	 17 ,  68,  -16, 4;
	 19 , -17,   95, 20;
	 15 , -14,  -16, 79];

B = [ 70;
	 -60;
	  55;
	  50];

G = [];
for i = 1:4
	G(i) = B(i) / A(i,i);
endfor
G = G.';
X = G;
L = tril(A);
U = A - L;
k = 1;
tol = 0.002;
Dr(k) = tol + 1;

while(k <= 200 && (Dr(k) > tol))
	Xa = X;
	k = k + 1;
	X = L \ (B - U*Xa);
	Dr(k) = norm(X - Xa, inf)/norm(X, inf);

end

X