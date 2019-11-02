%método da eliminaçao de Gauss - jordan

clear all; clc; clear;


n = input('Insira o numero de incógnitas do seu sistema: ');

%A = [0.8 -0.2 -0.2 -0.3; -0.2 0.9 -0.2 -0.3;
%     -0.3 -0.3 0.8 -0.2; -0.2 -0.2 -0.4 0.8];
%B = [0.5;0.4;0.3;0];

A = [];
B = 0:1:n-1;
B = B.';
for c = 1:n
  Aux = 0:1:n-1;
  A = [A ; Aux]; 
endfor

disp('Digite os coeficientes do sistema');
m = 0;

for c2 = 1:n
  fprintf('Equação %d\n', c2);
  for c3 = 1:n
    A(c2,c3) = input('');
  endfor
  B(c2) = input('');
endfor
%Escalonamento
for j = 1:n
  for i = 1:n
    if(i != j)
      m = A(i, j)/A(j, j);
      B(i) = B(i) - (m*B(j));
      for k = 1:n
        A(i,k) = A(i,k) - (m*A(j,k)); 
      endfor
    end
  endfor
endfor
;
X = 0:1:n-1;
X = X.';

for i = 1:n
  X(i) = B(i)/A(i,i);
endfor
; 
X  