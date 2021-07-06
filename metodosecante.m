%Metodo secante

clear all 
disp('***METODO SECANTE*')
f=inline(input('Escriba entre apostrofos la ecuacion a resolver: '))

p0=input('ingrese aproximacion inicial: ')
p1=input('ingrese aproximacion inicial: ')
tol=10^(-4);
maxit=input('Cuantas iteraciones: ')%numero de interaciones
ct=1;%contador

while(ct<maxit)
  fx0=f(p0);
  fx1=f(p1);
  p=p1-fx1*((p1-p0)/(fx1-fx0));
  fprintf('| %0.8f |\n',p)
    if(abs(p-p1)<=tol)
      break;
    end
  ct=ct+1;
  
  p0=p1;
  fx0=fx1;
  p1=p;
  fx1=f(p);
end
%'(3*x^2)+x-2'