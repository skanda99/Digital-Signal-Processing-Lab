% a = 3, rectangular and hanning windows

% M = 21, so N = 20

% defining cutoff frequency
Wc = 1/(1+3);
N = 20;

% desinging the FIR filters using different windows.
B1 = fir1(N,Wc,rectwin(21));
B2 = fir1(N,Wc,hanning(21));

% plotting the Impulse response of filters
figure();
stem(0:(size(B1,2)-1),B1,'r');
hold on;
stem(0:(size(B2,2)-1),B2,'g');
legend('Rectangular','Hanning');
title('Impulse Response');
xlabel('samples');
ylabel('h(n)');

% ploting the bode
figure();
freqz(B1);
title('Rectangular window');

figure();
freqz(B2);
title('Hanning window');

