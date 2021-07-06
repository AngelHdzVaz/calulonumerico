%Metodo Newton

clc
clear all 
disp('[[[metodo de newton]]]')
f=inline(input('Escriba entre apostrofos la ecuacion a resolver: '))
df=inline(input('Escriba entre apostrofos la ecuacion derivada a resolver: '))
x=input('ingrese punto inicial: ')
tol=10^-5;%especifica tolerancia
maxit=input('Cuantas iteraciones: ')%pedimos las iteraciones
ct=0;%contador
  fprintf('|  ct   ||   x1  ||  fx   |\n')

while(ct<maxit)
  fx=f(x);
  dfx=df(x);
  f0=fx/dfx;
  x1=x-f0;
  x=abs(x1-x);    

  fprintf('| %0.6f || %0.6f || %0.6f |\n',ct,x1,fx)
    if(abs(x1-x)<=tol)
      break;
    end
  x=x1;
  ct=ct+1;
end
disp('La aproximacion a la raiz es:')
fprintf('%8.6f \n',x)