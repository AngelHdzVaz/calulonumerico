%Gauss Jordan
%Angel Hernandez
%07-09-18

clear all
clc
%creams atriz
A=[1,2,3,4,8;1,3,-5,-3,25;1,-2,-3,4,40;-3,-7,7,8,59];
[m,n]=size(A);
disp('GAUSS - JORDAN')

A%imprime la matriz
M=A;%asignamos a M la matriz de trabajo

%iniciamos operaciones con renglon

for i=1:m-1    % renglones
  for j=i+1:m   %columnas
    A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:)
    end
  end
  
%Hacer diagonal principal con ceros
for i=m:-1:2
  for j=i-1:-1:1
    A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:)
  end
 end
 A%mostrar la matriz 
 
 for i=1:m
   
   A(i,:)=A(i,:)/A(i,i);
   end
   A
   %Muestra matriz final