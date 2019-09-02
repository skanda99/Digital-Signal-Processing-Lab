# a = 3, A = 160, B = 166

Fs = 200;
dt = 1/Fs;
t = [0:dt:10-dt];

# defining signal
y = 0.1*sin(160*pi*t)+cos(166*pi*t);

x = [215 415 1115 1515 1915];
i = 1;

figure();

# plotting magnitude spectrum for different number of samples
for n=x
  yt = y(1:n);
  DFT = fft(yt);
  
  k = [0:n-1];
  f = Fs/n .* k;
  
  subplot(3,2,i);
  i = i+1;
  plot(f,abs(DFT)/n);
  grid();
  title([num2str(n) ' samples']);
  xlabel('Frequency (Hz)');
  ylabel('abs(DFT(y(t)))');
endfor