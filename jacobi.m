%Método de jacobi

clear; clear all; clc;

A = [78 , -15 , -13, -7;
	 17 ,  68,  -16, -4;
	 19 , -17,   95, 20;
	 15 , -14,  -16, 79];

B = [ 70;
	 -60;
	  55;
	  50];

C = [];
G = [];

n = 4;

for i = 1:n
	G(i) = B(i) / A(i,i);
	for j = 1:n
		if(i == j)
			C(i,j) = 0;
		else
			C(i,j) = -A(i, j) / A(i, i);
		end
	endfor
endfor


G = G.';

k = 1;

Xa = G;

TOL = 0.002;

X = C*Xa + G;

d = max(X - Xa);
erro = abs(d / max(X));


while((k < 200) && erro > TOL)
	Xa = X;
	X = C*Xa + G;
	k = k + 1;
	fprintf("%d\n", k);
	d = max(X - Xa);
	erro = abs(d / max(X));
end


X
