
# importing audio file
[y Fs] = audioread('Opera.wav');

N = length(y)/10;

disp('Location of dominant peaks in Hz:');

# loop for consecutive N samples
for i=[1:10]
  ys = y(N*i-N+1:N*i);
  
  # calculating absolute values of DFT
  absF = abs(fft(ys));
  
  L = length(absF);
  k = [0:L-1];
  n = length(ys);

  # calculating frequencies  
  f = Fs/n .* k;
  
  # plotting abs(DFT)  
  subplot(5,2,i);
  plot(f,absF);
  s = [];
  title(i);
  xlabel('Frequency (Hz)');
  ylabel('abs(DFT(y(t)))');
  
  # finding dominant peak
  m = 1;
  for j=[1:int32(L/2)]
    if absF(m) < absF(j)
      m = j;
    endif
  endfor
  
  s = [char(i+'0'-1) ' ' 'Window'];
  disp(s);
  disp(f(m));
  
endfor
