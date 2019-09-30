% a = 3
Fs = 720;

% Finding order and Natural frequency
[N,wn] = buttord(10*2/Fs,20*2/Fs,3,40);
% finding the numerator and denominator coefficients of transfer function
[B,A] = butter(N,wn);

% loading ECG data
ECG = load('ECG_Data.txt');
% filtering ECG data
Y = filter(B,A,ECG);

dt = 1/Fs;
n = length(ECG);
T = n/Fs;
t = 0:dt:T-dt;

% plotting the filtered ECG signal
figure();
plot(t,ECG,'r');
hold();
plot(t,Y,'g');
legend(['Original';'Filtered']);
title('Filtering action on ECG');
xlabel('time(s)');
ylabel('ECG');


DFTx = fft(ECG);
DFTy = fft(Y);
N = length(DFTx);
k = 0:N-1;
f = Fs/N .* k;

% plotting the DFT
figure();
subplot(2,1,1);
plot(f,abs(DFTx));
title('DFT of original signal');
xlabel('Frequency(Hz)');
ylabel('DFT(ECG)');
subplot(2,1,2);
plot(f,abs(DFTy));
title('DFT of filtered signal');
xlabel('Frequency(Hz)');
ylabel('DFT(ECG)');