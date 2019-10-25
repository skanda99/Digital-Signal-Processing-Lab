
% number of points in windows
N = 125;

% plotting different windows
figure();

subplot(3,1,1);
plot(rectwin(N));
title('Rectangular Window');
xlabel('samples');
ylabel('y(n)');

subplot(3,1,2);
plot(hamming(N));
title('Hamminging Window');
xlabel('samples');
ylabel('y(n)');

subplot(3,1,3);
plot(hanning(N));
title('Hanning Window');
xlabel('samples');
ylabel('y(n)');
