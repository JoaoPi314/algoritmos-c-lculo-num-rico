%método da bisseção
clear all; clc;

a = input('a = ');
b = input('b = ');
TOL = input('TOL = ');
xa = b;

if(F(a)*F(b) > 0)
  disp('Não há raizes no intervalo');
else
  fprintf('It         x           f(x)\n');
  xp = (a + b)/2;
  it = 0;
  fprintf('%d         %.10f        %.10f\n', it, xp, F(xp));
  while(it <= 200 && abs(F(xp))>TOL)
    if(F(a)*F(xp) < 0)
      b = xp;
    else
      a = xp;
    end
    it = it + 1;
    xa = xp;
    xp = (a + b)/2;
    fprintf('%d         %.10f        %.10f\n', it, xp, F(xp));

  end
  if(it <= 200)
    fprintf('Raiz encontrada: %.10f', xp);
  else
    disp('Número máximo de iterações atingido...');  
  end
 
end