%encontrar todas as ra�zes de um polinomio

grau = input('Digite o grau do polin�mio: ');
A = [];
for c = 1:grau+1
  A(c) = input('Digite o coeficiente: ');  
endfor

Raizes = roots(A);
Raizes
