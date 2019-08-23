
# setting a = (143%4)
a = 1+mod(143,4);

# loading function funl
#exec(funl)

# setting time resolution to 0.001s 
dt = 0.001;
t = [0:dt:10-dt];

# a part
ya = funl(t,a);

# b part
yb = funl(t-1.5*a,a);

# c part
yc = funl(t/2,a);


# plotting ya,yb,yc
subplot(3,1,1);
plot(t,ya);
title('Original signal');
xlabel('time (s)');
ylabel('y(t)');

subplot(3,1,2);
plot(t,yb);
title('Signal delayed by 1.5*a');
xlabel('time (s)');
ylabel('y(t)');

subplot(3,1,3);
plot(t,yc);
title("Signal dilated twice");
xlabel('time (s)');
ylabel('y(t)');


