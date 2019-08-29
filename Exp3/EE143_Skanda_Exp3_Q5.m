
# Uttering I
[yi Fs] = audioread('III.wav');

# finding DFT of yi
DFT = fft(yi);

N = length(yi);
L = length(DFT);
k = [0:L-1];

# finding frequencies
f = Fs/N .* k;

# plotting frequency spectrum
subplot(2,1,1);
plot(f,abs(DFT));
title('Uttering I');
xlabel('Frequency (Hz)');
ylabel('abs(DFT(y(t)))');

# finding fundamental frequency
m = 1;
for i=[1:int32(L/2)]
  if abs(DFT(i)) > abs(DFT(m))
    m = i;
  endif;
endfor  

disp('Fundamental Frequency of I (Hz):');
disp(f(m));


# Uttering O
[yo Fs] = audioread('OOO.wav');

# finding DFT of yo
DFT = fft(yo);

N = length(yo);
L = length(DFT);
k = [0:L-1];

# finding frequencies
f = Fs/N .* k;

# plotting frequency spectrum
subplot(2,1,2);
plot(f,abs(DFT));
title('Uttering O');
xlabel('Frequency (Hz)');
ylabel('abs(DFT(y(t)))');

# finding fundamental frequency
m = 1;
for i=[1:int32(L/2)]
  if abs(DFT(i)) > abs(DFT(m))
    m = i;
  endif;
endfor  

disp('Fundamental Frequency of O (Hz):');
disp(f(m));