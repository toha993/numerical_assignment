function res=false(f,a,b)
  A(1)=a;
  B(1)=b;
  C(1)=(a*f(B(1))-b*f(A(1)))/(f(B(1))-f(A(1)));
  fa(1)=f(A(1));
  fb(1)=f(B(1));
  fc(1)=f(C(1));
  for i=2:1:25
    if fa(i-1)*fc(i-1) < 0,
      A(i)=A(i-1);
      B(i)=B(i-1);
    else
      A(i)=C(i-1);
      B(i)=B(i-1);
    end;
    fa(i)=f(A(i));
    fb(i)=f(B(i));
    C(i)=(A(i)*f(B(i))-B(i)*f(A(i)))/(f(B(i))-f(A(i)));
    fc(i)=f(C(i)); 
 end;
 res= [A' B' fa' fb' C' fc'];
endfunction

  