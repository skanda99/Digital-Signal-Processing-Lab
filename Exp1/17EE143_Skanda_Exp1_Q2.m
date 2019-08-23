
# defining omega from -4*pi to 4*pi
omega = [-4*pi:0.001:4*pi];

# defining CTFT

# x(t)
x1 = inline('1./(0.25+i*omega)','omega');

# x(t-t0)
x2 = inline('exp(-i*6*omega)./(0.25+i*omega)','omega');

# x(t/2)
x3 = inline('2./(0.25+i*2*omega)','omega');

# plotting figures
subplot(3,2,1);
plot(omega,abs(x1(omega)));
title('absolute value of CTFT of x(t) signal');
xlabel('omega(rad/s)');
ylabel('abs(X(omega))');

subplot(3,2,2);
plot(omega,angle(x1(omega)));
title('angle of CTFT of x(t) signal');
xlabel('omega(rad/s)');
ylabel('angle(X(omega))');

subplot(3,2,3);
plot(omega,abs(x2(omega)));
title('absolute value of CTFT of x(t-1.5*a) signal');
xlabel('omega(rad/s)');
ylabel('abs(X(omega))');

subplot(3,2,4);
plot(omega,angle(x2(omega)));
title('angle of CTFT of x(t-1.5*a) signal');
xlabel('omega(rad/s)');
ylabel('angle(X(omega))');

subplot(3,2,5);
plot(omega,abs(x3(omega)));
title('absolute value of CTFT of x(t/2) signal');
xlabel('omega(rad/s)');
ylabel('abs(X(omega))');

subplot(3,2,6);
plot(omega,angle(x3(omega)));
title('angle of CTFT of x(t/2) signal');
xlabel('omega(rad/s)');
ylabel('angle(X(omega))');