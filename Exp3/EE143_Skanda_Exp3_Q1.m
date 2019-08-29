
# a = 4

# for flute
[y,Fs] = audioread('flute4.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,1);
plot(f,abs(Fy));
title('Flute4 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int16(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Flute4 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));


# for piano

[y,Fs] = audioread('piano4.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,2);
plot(f,abs(Fy));
title('Piano4 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int32(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Piano4 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));


# for trumpet

[y,Fs] = audioread('trumpet4.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,3);
plot(f,abs(Fy));
title('Trumpet4 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int32(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Trumpet4 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));

# for violin

[y,Fs] = audioread('violin4.wav');

# taking DFT
Fy = fft(y);

L = length(Fy);
N = length(y);

k = [0:L-1];

# getting frequencies
f = Fs/N .* k;

subplot(2,2,4);
plot(f,abs(Fy));
title('Violin4 - abs(DFT) VS Frequency');
xlabel('Frequency (Hz)');
ylabel('DFT(y(t))');

m = 1;
for i=[1:int32(L/2)]
  if Fy(m) < Fy(i)
    m = i;
  endif
endfor

disp('Violin4 -->');
disp('Fundamental frequency:');
disp(f(m));
disp('abs(DFT) at fundamental frequency:');
disp(abs(Fy(m)));