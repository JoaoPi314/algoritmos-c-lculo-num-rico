%m�todo da falsa posi��o

clear; clc; clear all;

a = input('a = ');
b = input('b = ');
TOL = input('TOL = ');
xa = b;
if(F(a)*F(b) > 0)
  disp('N�o h� ra�zes no intervalo.\n');
else
  fprintf('It               x               f(x)\n');
  xp = (a*F(b) - b*F(a))/(F(b) - F(a));
  it = 0;
  fprintf('%4d              %.10f            %.10f\n', it, xp, F(xp));
  while(it <= 200 && abs(F(xp)) > TOL && abs((xp - xa)/xp))
    if(F(a)*F(xp) < 0)
      b = xp;
    else
      a = xp;
    end
    it = it + 1;
    xa = xp;
    xp = (a*F(b) - b*F(a))/(F(b) - F(a));
    fprintf('%4d              %.10f            %.10f\n', it, xp, F(xp));
  end
  if(it <= 200)
    fprintf('Ra�z encontrada: %.10f', xp);
  else
    disp('N�mero m�ximo de itera��es atingido...\n');
  end
end

