
# loading data
y = load('Exp4Data3.txt');

ycopy = y;

# plotting magnitude spectrum using hamming window
y = y .* [hamming(500)]';

DFT = fft(y,10000);

N = 10000;
x = [0:1/N:1-1/N];
subplot(2,1,1);
plot(x,abs(DFT)/N);
grid();
title('Hamming Window');
xlabel('Frequency (Fs)');
ylabel('abs(DFT(y(t)))');


y = ycopy;

# plotting magnitude spectrum using rectangular window
DFT = fft(y,10000);

N = 10000;
x = [0:1/N:1-1/N];
subplot(2,1,2);
plot(x,abs(DFT)/N);
grid();
title('Rectangular Window');
xlabel('Frequency (Fs)');
ylabel('abs(DFT(y(t)))');
