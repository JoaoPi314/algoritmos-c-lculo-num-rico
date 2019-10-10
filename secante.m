%Método da secante

clear; clear all; clc;

it = 0;
x0 = input('x0 = ');
x1 = input('x1 = ');
TOL = input('TOL = ');
x = (x0*F(x1) - x1*F(x0))/(F(x1) - F(x0));
xa = x1;
x2 = x;
fprintf('It               x               f(x)\n');
fprintf('%4d              %.10f            %.10f\n', it, x, F(x));
it += 1;
while(it <= 200 && (abs(F(x))> TOL) && (abs((x - xa)/x))>TOL)
  x = (xa*F(x2) - x2*F(xa))/(F(x2) - F(xa));
  fprintf('%4d              %.10f            %.10f\n', it, x, F(x)); 
  it += 1;
  xa = x2;
  x2 = x;
  
end

if(it <= 200)
  fprintf('Raiz encontrada. X = %.10f', x);
else
  disp('Limite de iterações atingido');
end
