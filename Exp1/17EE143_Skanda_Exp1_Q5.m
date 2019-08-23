
# loading recorded file
[y,sr] = audioread('recording.wav');

# setting time resolution
dt = 1/sr;
t = [0:dt:5-dt];

# sr = 1000 so 5000 samples for 5 seconds
plot(t,y(1:5000,1));
title('Humming sound');
xlabel('time (s)');
ylabel('y(t)');