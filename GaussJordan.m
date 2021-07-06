%GaussJordan.



%Metodo de GAUSS 

A=[8.1, -5 ,8.3 , 76,23 ,15;
   -4.6, 8.7, 8.6, 46,50 , 10;
   -19.4, 12.7, 8.5, 39,60, 12;
   12.6, -9.3, 37.1, 122,5,13;
   6.7, 0, 14.7, 86,98 , 60;
   21.2,  0, 16.8, 154,12,50]
   
 M=A
   
   disp("Metodos de Gauss ")
disp('********************')
disp('INICIO DEL METODO')


[m,n]=size(A);
	
	for i=1:m-1
	for j = i+1:m
	M(j,:)= M(j,:)-(M(j,i)/M(i,i))*M(i,:)
					
          end
	end
  
 


  %Gauss-Jordan
  
  for i= m:-1:2
    for j= i-1:-1:1
    
    M(j,:)= M(j,:)-(M(j,i)/M(i,i))*M(i,:);
    
      end
      end
      
      M
      for i= 1:m
     M(i,:) = M(i,:)/M(i,i);
      
      end
      M
    
    
  
  
  