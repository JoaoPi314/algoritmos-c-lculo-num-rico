%método da eliminaçao de Gauss

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
%for j = 1:n-1
%  for i = j+1:n
%    m = A(i, j)/A(j, j);
%    B(i) = B(i) - (m*B(j));
%    for k = j+1:n
%      A(i, k) = A(i, k) - m*A(j, k); 
%    endfor
%  endfor
%endfor

%ajustes de nomenclatura
tam = n

%Escalonamento de GAUSS-JORDAN
for posPivo = 1:1:tam
  pivo = A(posPivo, posPivo)
  if pivo == 0 #Contornar isso
    fprintf('Erro\n');
    break;
  end
  for lin = 1:1:tam
    if(!(lin == posPivo))
      mult = A(lin,posPivo)/pivo
      for col = 1:1:tam
        A(lin,col) = A(lin,col) - mult*(A(posPivo,col));
        Inv(lin,col) = Inv(lin,col) - mult*(Inv(posPivo,col));
      endfor
      B(lin,1) = B(lin,1) - mult*B(posPivo,1);
    endif
  endfor
endfor


%X = 0:1:n-1;
%X = X.';

%for i = n:-1:1
%  X(i) = B(i)/A(i, i);
%  for j = i+1:n
%    X(i) -= (A(i,j)*X(j))/A(i,i);
%  endfor
%endfor

%X


% Obtendo resultados
for lin = 1:1:tam
  B(lin,1) = B(lin,1)/A(lin,lin);
  for i = 1:1:tam
    Inv(lin,i) = Inv(lin,i)/A(lin,lin);
  endfor
  A(lin,lin) = 1;
endfor


% Mostrando resultados
fprintf("Matriz:\n");
A #mostra como estah¡ a matriz
fprintf("Matriz Inversa:\n");
Inv
fprintf("Solução:\n");
B
