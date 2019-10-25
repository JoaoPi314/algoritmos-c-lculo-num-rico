%encontrar todas as raízes de um polinomio

grau = input('Digite o grau do polinômio: ');
A = [];
for i = 1:grau+1
  A(i) = input('Digite o coeficiente: ');  
endfor

raizes = roots(A) %se você simplesmente tirar o ; já imprime
                  %colocando o nome da variável no padrão minúsculo
