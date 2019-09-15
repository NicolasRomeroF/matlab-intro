% x = 0:0.01:15*pi;
% 
% log5 = @(x) log(x) / log(5);
% log6 = @(x) log(x) / log(6);
% 
% a = 12*log5(3*x+7);
% b = sin(4*(log2(x+8))) + cos(5*(log6(2*x+46)));
% 
% figure(1)
% 
% plot(x,a,'r *')
% title('Funcion a')
% xlabel('x')
% ylabel('a')
% 
% saveas(gcf,'a.png')
% 
% figure(2)
% 
% plot(x,b,'g +')
% title('Funcion b')
% xlabel('x')
% ylabel('b')
% 
% saveas(gcf,'b.png')
% 
% 
% figure(3)
% 
% plot(x,a,'r *',x,b,'g +')
% legend('Funcion a', 'Funcion b')
% title('Funcion a y b')
% xlabel('x')
% 
% saveas(gcf,'ab.png')
% 
% 
% y = -10:0.05:10;
% c = 7*exp(y+12);
% 
% figure(4)
% plot(y,c)
% title('Funcion exponencial c')
% xlabel('x')
% ylabel('c')
% 
% grid
% 
% saveas(gcf,'c.png')
% 
% 
% figure(5)
% semilogy(y,c)
% title('Funcion exponencial c escala logaritmica')
% xlabel('x')
% ylabel('c')
% grid
% 
% saveas(gcf,'clog.png')


syms x

prompt = 'Ingrese el vector que representa el polinomio ';

polinomio = [];

try
    polinomio = input(prompt);
catch
    disp('El vector ingresado no es valido')
end



fx = polinomio
raiz = newton(fx,2,5000)


