%método de eliminação de gauss-jordan para calcular inversa

A = [107, -21, 17, 13;
      21, 110, 10, 20;
      16,  17, 74,  8;
     -19,   8, 17, 90];

I = eye(4,4);

n = 4;

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