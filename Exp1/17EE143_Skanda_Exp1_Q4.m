
# loading ConvFile4.txt
x1 = load('ConvFile4.txt');

# loading Track004.wav
[x2,sr] = audioread('Track004.wav');

# convolution of x2 and x2
y = conv(x1,x2);

# writing wav file
audiowrite('Q4.wav',y,sr);