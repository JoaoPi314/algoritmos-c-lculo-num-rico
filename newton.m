%método de newton

clear; clc; clear all;

TOL = input('TOL = ');
xa = input('xa = ');
x = xa;

  fprintf('It               x               f(x)\n');
  it = 0;
  fprintf('%4d              %.10f            %.10f\n', it, xa, F(xa));
  [f,d] = F(xa);
  while(it <= 200 && abs(F(x)) > TOL)
    x = xa - (f/d);
    [f,d] = F(x);
    it = it + 1;
    xa = x;
    fprintf('%4d              %.10f            %.10f\n', it, x, F(x));
  end
  if(it <= 200)
    fprintf('Raíz encontrada: %.10f', x);
  else
    disp('Número máximo de iterações atingido...\n');
  end


