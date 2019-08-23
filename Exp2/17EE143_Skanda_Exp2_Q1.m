
# a = 4

# Q1 - i

# setting dt
dt = 0.001;
t = [0:dt:1/4-dt];

# a part
y1 = 4*cos(2*pi*5*4*t);

# b part
y2 = 2*cos(2*pi*6*4*t);

# c part
y3 = 1*cos(2*pi*10*4*t);

figure();
plot(t,y1,t,y2,t,y3);
title('Cosine signals individually plotted');
legend(['4*cos(40*pi*t)';'2*cos(48*pi*t)';'cos(80*pi*t)']);
xlabel('time(s)');
ylabel('y(t)');


# Q1 - i

# total signal by adding all three cosines

y_sum = y1+y2+y3;
figure();
plot(t,y_sum);
title('Sum of all the cosines');
xlabel('time(s)');
ylabel('y(t)');

# Q1 - ii

# sampling signals at 56, 80 and 36 samples per second

Fs = 56;
dt = 1/Fs;
t = [0:dt:0.25-dt];
y_sum1 = 4*cos(2*pi*5*4*t) + 2*cos(2*pi*6*4*t) + 1*cos(2*pi*10*4*t);

Fs = 80;
dt = 1/Fs;
t = [0:dt:0.25-dt];
y_sum2 = 4*cos(2*pi*5*4*t) + 2*cos(2*pi*6*4*t) + 1*cos(2*pi*10*4*t);

Fs = 36;
dt = 1/Fs;
t = [0:dt:0.25-dt];
y_sum3 = 4*cos(2*pi*5*4*t) + 2*cos(2*pi*6*4*t) + 1*cos(2*pi*10*4*t);

figure();
subplot(3,1,1);
stem([0:length(y_sum1)-1],y_sum1);
title('y(t) with sampling rate = 56 samples/second');
xlabel('n(sample)');
ylabel('y(n)');

subplot(3,1,2);
stem([0:length(y_sum2)-1],y_sum2);
title('y(t) with sampling rate = 80 samples/second');
xlabel('n(sample)');
ylabel('y(n)');

subplot(3,1,3);
stem([0:length(y_sum3)-1],y_sum3);
title('y(t) with sampling rate = 36 samples/second');
xlabel('n(sample)');
ylabel('y(n)');


# Q1 - iii

# interpolating signals of different SR
figure();
subplot(3,1,1);
plot([0:length(y_sum1)-1],y_sum1);
title('Interpolation on signal with SR = 56 samples/second');
xlabel('time(s)')
ylabel('y(t)');

subplot(3,1,2);
plot([0:length(y_sum2)-1],y_sum2);
title('Interpolation on signal with SR = 80 samples/second');
xlabel('time(s)')
ylabel('y(t)');

subplot(3,1,3);
plot([0:length(y_sum3)-1],y_sum3);
title('Interpolation on signal with SR = 36 samples/second');
xlabel('time(s)')
ylabel('y(t)');

# Q1 - iv

# calculating energies of signals
E1 = abs(fft(y_sum1)).^2;
E2 = abs(fft(y_sum2)).^2;
E3 = abs(fft(y_sum3)).^2;

figure();
subplot(3,1,1);
bar([0:length(E1)-1],E1);
title('Energy spectrum of signal sampled at 56 samples/second');
xlabel('n');
ylabel('Energy');

subplot(3,1,2);
bar([0:length(E2)-1],E2);
title('Energy spectrum of signal sampled at 80 samples/second');
xlabel('n');
ylabel('Energy');

subplot(3,1,3);
bar([0:length(E3)-1],E3);
title('Energy spectrum of signal sampled at 36 samples/second');
xlabel('n');
ylabel('Energy');
