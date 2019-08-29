
# importing humming sound
[y Fs] = audioread('humWav.wav');

# taking DFT of y
F = fft(y);

N = length(y);
L = length(F);
k = [0:L-1];

# defining freaquency
f = Fs/N .* k;

# plotting f VS abs(F)
plot(f,abs(F));
title('abs(DFT) VS frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

# calculating fundamental frequency
m = 1;

for i=[1:int32(L/2)]
  if abs(F(i)) > abs(F(m))
    m = i;
  endif
endfor

disp('Humming Sound -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(F(m)));


