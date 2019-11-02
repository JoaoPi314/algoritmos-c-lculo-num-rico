%método da falsa posição modificado

clear; clc; clear all;

a = input('a = ');
b = input('b = ');
TOL = input('TOL = ');
xa = b;
Fa = F(a);
Fb = F(b);

if(F(a)*F(b) > 0)
  disp('Não há raízes no intervalo.\n');
else
  fprintf('It               x               f(x)\n');
  xp = (a*Fb - b*Fa)/(Fb - Fa);
  it = 0;
  fprintf('%4d              %.10f            %.10f\n', it, xp, F(xp));
  while(it <= 200 && abs(F(xp)) > TOL && abs((xp - xa)/xp))
    if(F(a)*F(xp) < 0)
      b = xp;
      Fb = F(xp);
      if(F(xa)*F(xp) > 0)
        Fa = Fa/2;
      end
    else
      a = xp;
      Fa = F(xp);
      if(F(xa)*F(xp) > 0)
        Fb = Fb/2;
      end
    end
    it = it + 1;
    xa = xp;
    xp = (a*Fb - b*Fa)/(Fb - Fa);
    fprintf('%4d              %.10f            %.10f\n', it, xp, F(xp));
  end
  if(it <= 200)
    fprintf('Raíz encontrada: %.10f', xp);
  else
    disp('Número máximo de iterações atingido...\n');
  end
end

