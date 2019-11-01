
A = [78 , -15 , -13, -7;
	 17 ,  68,  -16, -4;
	 19 , -17,   95, 20;
	 15 , -14,  -16, 79];

B = [ 70;
	 -60;
	  55;
	  50];

n = size(A, 1);
L = eye(3,3);

for j=1:n-1  
  for i=j+1:n  
      L(i,j) = A(i,j)/A(j,j);  
      A(i,j+1:n) = A(i,j+1:n) - L(i,j)*A(j,j+1:n);  
      A(i,j)=0;  
  endfor  
endfor 

Y = [];


for i = 1:n
  Y(i) = B(i);
  for j = i-1:-1:1
    Y(i) -= (L(i,j)*Y(j));
  endfor
endfor

X = [];

for i = n:-1:1
  X(i) = Y(i)/A(i, i);
  for j = i+1:n
    X(i) -= (A(i,j)*X(j))/A(i,i);
  endfor
endfor

X