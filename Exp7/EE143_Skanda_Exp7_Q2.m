
% a = 3, hanning window

% defining the lengths for different hanning winows
N1 = 100;
N2 = 200;
N3 = 300;

% getting the hanning windows
x1 = hanning(N1);
x2 = hanning(N2);
x3 = hanning(N3);

N = 2048;
k = 0:N-1;

% taking the 1024 point DFTs of different windows
DFT1 = fft(x1,N);
DFT2 = fft(x2,N);
DFT3 = fft(x3,N);

% plotting the frequency spectrums
figure();

plot(k/N,abs(DFT1)/N1,'r');
hold on;

plot(k/N,abs(DFT2)/N2,'b');
hold on;

plot(k/N,abs(DFT3)/N3,'g');
hold on;

legend('100 pts','200 pts','300 pts');
title('Frequency Spectrums');
xlabel('Normalized f');
ylabel('Normalized abs(DFT)');
