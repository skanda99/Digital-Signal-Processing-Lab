
# a = 4;
[x,Fs] = audioread('Track004.wav');

# SR = Fs/2
x2 = x(1:2:length(x));
# SR = Fs/3
x3 = x(1:3:length(x));
# SR = Fs/4
x4 = x(1:4:length(x));
# SR = Fs/5
x5 = x(1:5:length(x));
# SR = Fs/6
x6 = x(1:6:length(x));

audiowrite('PAudio2.wav',x2,Fs/2);
audiowrite('PAudio3.wav',x3,Fs/3);
audiowrite('PAudio4.wav',x4,Fs/4);
audiowrite('PAudio5.wav',x5,Fs/5);
audiowrite('PAudio6.wav',x6,Fs/6);