% a = 3
Fs = 720;

% designing chebyshev1 filter
[N,wp] = cheb1ord(10*2/Fs,20*2/Fs,3,40);
[B,A] = cheby1(N,5,wp);
SYS1 = tf(B,A,1/Fs);

% plotting bode of chebyshev1
figure();
h = bodeplot(SYS1);
setoptions(h,'FreqUnits','Hz');
title('Bode of Chebyshev1');

% designing butterworth filter
[N,wn] = buttord(10*2/Fs,20*2/Fs,3,40);
[B,A] = butter(N,wn);
SYS2 = tf(B,A,1/Fs);

% finding impulse and step responses of chebyshev1 and butterworth filters
[Y1,T1] = impulse(SYS1,1);
[Y2,T2] = step(SYS1,1);
[Y3,T3] = impulse(SYS2,1);
[Y4,T4] = step(SYS2,1);

% plotting the impulse and step responses
figure();
plot(T1,Y1,'r',T3,Y3,'g',T2,Y2,'y',T4,Y4,'b');
legend('Impulse Chebyshev1','Impulse Butterworth','Step Chebyshev1','Step Butterworth');
title('Time Responses');
xlabel('Time(s)');
ylabel('y(t)');