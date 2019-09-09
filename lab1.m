x = 0:0.01:15*pi;

log5 = @(x) log(x) / log(5);
log6 = @(x) log(x) / log(6);

a = 12*log5(3*x+7);
b = sin(4*(log2(x+8))) + cos(5*(log6(2*x+46)));

figure(1)

plot(x,a,'r *')
title('Funcion a')
xlabel('x')
ylabel('a')

figure(2)

plot(x,b,'g +')
title('Funcion b')
xlabel('x')
ylabel('b')

figure(3)

plot(x,a,'r *',x,b,'g +')
legend('Funcion a', 'Funcion b')
title('Funcion a y b')
xlabel('x')

y = -10:0.05:10;
c = 7*exp(y+12);

figure(4)
plot(y,c)
title('Funcion exponencial c')
xlabel('x')
ylabel('c')

grid

figure(5)
semilogy(y,c)
title('Funcion exponencial c escala logaritmica')
xlabel('x')
ylabel('c')
grid





