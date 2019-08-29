
# a = 4, piano4 fundamental frequency = 784 Hz
# ans = flute3, 793.5 Hz

# for flute1
[y,Fs] = audioread('flute1.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,1);
plot(f,abs(Fy));
title('Flute1 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int16(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Flute1 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));


# for flute2

[y,Fs] = audioread('flute2.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,2);
plot(f,abs(Fy));
title('Flute2 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int32(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Flute2 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));


# for flute3

[y,Fs] = audioread('flute3.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,3);
plot(f,abs(Fy));
title('Flute3 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int32(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Flute3 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));

# for flute4

[y,Fs] = audioread('flute4.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,4);
plot(f,abs(Fy));
title('Flute4 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int32(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Flute4 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));