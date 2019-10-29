function bis=bisec(f,a,b)
  first(1)=a;
  second(1)=b;
  final(1)=(a+b)/2;
  fa(1)=f(a);
  fb(1)=f(b);
  fc(1)=f(final(1));
  
  for i= 2:1:25
    if fa(i-1)*fc(i-1) < 0,
      second(i)=final(i-1);
      first(i)=first(i-1);
    else
      first(i)=final(i-1);
      second(i)=second(i-1);
    endif
    
    fa(i)=f(first(i));
    fb(i)=f(second(i));
    final(i)=(first(i)+second(i))/2;
    fc(i)=f(final(i));
  endfor
  bis = [first' second' fa' fb' final' fc'];
endfunction
