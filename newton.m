function val=newton(f,a,b)
  pkg load symbolic
  syms x;
  dif=diff(f,x);
  drv=function_handle(dif);
  A(1)=(a+b)/2;
  f=function_handle(f);
  
  for i=2:1:25
    A(i)=(A(i-1)*(f(A(i-1))/drv(A(i-1))));
   end;
   val=[A'];
 endfunction
 
  