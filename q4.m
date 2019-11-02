%encontrar todas as raízes de um polinomio

grau = input('Digite o grau do polinômio: ');
A = [];
for c = 1:grau+1
  A(c) = input('Digite o coeficiente: ');  
endfor

Raizes = roots(A);
Raizes
