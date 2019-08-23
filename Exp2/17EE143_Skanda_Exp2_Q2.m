
# Notes with SR = 1000 samples/second
Fs = 1000;
dt = 1/Fs;
t = [0:dt:0.5-dt];

sa = sin(2*pi*525*t);
re = sin(2*pi*590*t);
ga = sin(2*pi*664*t);
ma = sin(2*pi*704*t);
pa = sin(2*pi*790*t);
da = sin(2*pi*885*t);
ni = sin(2*pi*995*t);
sa2 = sin(2*pi*1055*t);

y = [sa re ga ma pa da ni sa2];
wavwrite(y,Fs,"audio1.wav");

# Notes with SR = 1600 samples/second
Fs = 1600;
dt = 1/Fs;
t = [0:dt:0.5-dt];

sa = sin(2*pi*525*t);
re = sin(2*pi*590*t);
ga = sin(2*pi*664*t);
ma = sin(2*pi*704*t);
pa = sin(2*pi*790*t);
da = sin(2*pi*885*t);
ni = sin(2*pi*995*t);
sa2 = sin(2*pi*1055*t);

y = [sa re ga ma pa da ni sa2];
wavwrite(y,Fs,"audio2.wav");

# Notes with SR = 2200 samples/second
Fs = 2200;
dt = 1/Fs;
t = [0:dt:0.5-dt];

sa = sin(2*pi*525*t);
re = sin(2*pi*590*t);
ga = sin(2*pi*664*t);
ma = sin(2*pi*704*t);
pa = sin(2*pi*790*t);
da = sin(2*pi*885*t);
ni = sin(2*pi*995*t);
sa2 = sin(2*pi*1055*t);

y = [sa re ga ma pa da ni sa2];
wavwrite(y,Fs,"audio3.wav");