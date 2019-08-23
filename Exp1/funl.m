function [y] = funl(t,a)
  y = exp(-t/a) .* (t>=0);
endfunction
