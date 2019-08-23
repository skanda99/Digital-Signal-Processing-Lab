
# setting a = (143%4)
a = 1+mod(143,4);

# setting time resolution
dt = 0.001;
t = [0:dt:5-dt];

# defining signals
s1 = sin(2*pi*200*a*t);
s2 = sin(2*pi*220*a*t);
s = [s1 s2];

# writing wav file
audiowrite('Q3.wav',s,1000);

# plotting first 100 samples
subplot(2,1,1);
plot(t(1:100),s(1:100));
title('y(t) VS t');
xlabel('time (s)');
ylabel('y(t)');

subplot(2,1,2);
stem([1:100],s(1:100));
title('y(n) VS n');
xlabel('samples (n)');
ylabel('y(n)');