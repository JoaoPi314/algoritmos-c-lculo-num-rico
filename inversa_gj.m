%método de eliminação de gauss-jordan para calcular inversa

A = [3, 5; 2, -1];

I = [1, 0; 0, 1];

n = 2;

for j = 1:n
  for i = 1:n
  	div = A(i,i);
  	for l = 1:n	
  	  A(i, l) = A(i, l)/div;
  	  I(i, l) = I(i, l)/div;
  	endfor

    if(i != j)
      m = A(i, j)/A(j, j);
      for k = 1:n
      	I(i, k) = I(i, k) - (m*I(j, k));
        A(i, k) = A(i, k) - (m*A(j, k)); 
      endfor
    end
  endfor
endfor


I