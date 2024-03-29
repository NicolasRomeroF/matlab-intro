% Creaci�n arreglo de 0 a 15pi, con espaciado de 0.01
x = 0:0.01:15*pi;
% Definici�n de dos funciones logar�tmicas
log5 = @(x) log(x) / log(5);
log6 = @(x) log(x) / log(6);
% Definici�n funciones a graficar
a = 12*log5(3*x+7);
b = sin(4*(log2(x+8))) + cos(5*(log6(2*x+46)));

% Creaci�n del gr�fico de la funci�n a
figure(1)

plot(x,a,'r *')
title('Funcion a')
xlabel('x')
ylabel('a')
% Se guarda imagen del gr�fico de la funci�n a
saveas(gcf,'a.png')

% Creaci�n del gr�fico de la funci�n b
figure(2)

plot(x,b,'g +')
title('Funcion b')
xlabel('x')
ylabel('b')

% Se guarda el gr�fico de la funci�n b
saveas(gcf,'b.png')

% Creaci�n del gr�fico de las funciones a y b en conjunto
figure(3)

plot(x,a,'r *',x,b,'g +')
legend('Funcion a', 'Funcion b')
title('Funcion a y b')
xlabel('x')

% Se guarda el gr�fico de las funciones a y b en conjunto
saveas(gcf,'ab.png')

% Definici�n de arreglo entre los valores -10 y 10 con espaciado de 0.05
y = -10:0.05:10;
% Definici�n de la funci�n c
c = 7*exp(y+12);

% Creaci�n gr�fico de la funci�n c en escala normal
figure(4)
plot(y,c)
title('Funcion exponencial c')
xlabel('x')
ylabel('c')

% Se aplica el grid al gr�fico de la funci�n c en la escala normal
grid
% Se guarda la imagend el gr�fico de la funci�n c en escala normal
saveas(gcf,'c.png')

% Creaci�n gr�fico de la funci�n c en escala logar�tmica
figure(5)
semilogy(y,c)
title('Funcion exponencial c escala logaritmica')
xlabel('x')
ylabel('c')
% Se aplica el grid al gr�fico de la funci�n c en la escala logar�tmica
grid

% Se guarda la imagend el gr�fico de la funci�n c en escala logar�tmica
saveas(gcf,'clog.png')

% Declaraci�n de la variable de los polinomios
syms x

prompt = 'Ingrese el vector que representa el polinomio entre corchetes: ';

polinomio = [];
% Se solicita por consola el polinomio
try
    polinomio = input(prompt);
catch
    disp('El vector ingresado no es valido')
end

prompt = 'Ingrese el punto inicial: ';
x0 = 0;

% Se solicita por consola el punto inicial para el m�todo de newton-
% raphson

try
    x0 = input(prompt);
catch
    disp('El numero ingresado no es valido')
end

prompt = 'Ingrese el numero de iteraciones: ';
iter = 0;

% Se solicita por consola el npumero m�ximo de iteraciones para el m�todo de newton-
% raphson

try
    iter = input(prompt);
catch
    disp('El numero ingresado no es valido')
end

prompt = 'Ingrese el error m�nimo: ';
error = 0;
% Se solicita por consola el error m�nimo aceptable para el m�todo de newton-
% raphson
try
    error = input(prompt);
catch
    disp('El numero ingresado no es valido')
end


% C�lculo del cero del polinomio
fx = polinomio
raiz = newton(fx,x0,iter,error)


