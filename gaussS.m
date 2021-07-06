%Angel Hernandez
%metodo gauss

A=[4,2,-3,3,4,2,-16;
        3,1,-2,3,6,6,-10;
        2,-3,1,5,2,7,-4;
        1,-3,-5,6,2,8,12;
        5,2,4,-6,2,3,26;
        2,6,-3,-2,4,2,35]

[m,n]=size(A);

M=A;%asignamos a M la matriz de trabajo

%iniciamos operaciones con renglon

for i=1:m-1    % renglones
  for j=i+1:m   %columnas
            M (j , :)  = M(j , :) - (M(j,i)/M(i,i))* M( i, :)
            pause(1)
   end
  end
  
    M
    x = zeros(m,1);
    suma = 0;
    x(m)  = M(m,n)/M(m,m);
    
    for i=m-1;-1;1
        for j =i+1:m
          suma =(x(j)*M(i,j))+suma;
          end
          x(i) = (M(i,n) - suma )/M(i,i);
          end
          