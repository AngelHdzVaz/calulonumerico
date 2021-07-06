clc
clear all

f = inline( input('Escriba la funcion (entre apostrofos): ')  );
itera = input('numero de iteraciones: ');
tol = input('toleracia : ');
a = input('Ingresa a: ' );
c = input('Ingresa c: ' );

b =(a+c)/2;
FA = f(a);
FB = f(b);
FC = f(c);

%if FA . FC < 0
 %  disp(' No existen raices..!! ');
%end 
i = 1;
KL = 0;
KR = 0;
while( i <= itera )
  b = a -(FA*(c-a))/(FC-FA);
  FB = f(b);
  if((b-a) < tol)
    salida = b;
   endif
  if(FA *FB < 0)
    c = b;
    KR = 0;
    KL = KL+1;
    
      if (KL >1)
       FA = FA/2;
      endif
   else
     a = b;
      FA =FB;
      KL = 0;
      KR =KR+1;
      
         if (KR > 1)
            FC = FC/2;
         endif
     endif
    i = i+1;
endwhile
disp('el elemnto fracaso en iteraciones :');
disp(itera); 
disp('la raiz es : ');
disp(salida);