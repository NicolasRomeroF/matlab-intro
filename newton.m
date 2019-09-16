function xk = newton (fx,x0,iterations,error)
syms x
disp("X0:");
disp(x0)
disp("iteracion:");
disp(iterations);
% Se evalúa x0 en la función
fx0=polyval(fx,x0);
% Se deriva la función
df=polyder(fx);
% Sse evalua x0 en la función derivada
dfx0=polyval(df,x0);
% Se calcula nuevo punto
xk = x0-fx0/dfx0;
Se evalua nuevo punto en la función
fxk=polyval(fx,xk);


disp("xk:");
disp(xk);
% Si el error es mayor que la función en el nuevo punto o si no quedan más
% llamados recusrivos, se devuelve el nuevo punto
% Sino, se vuelve a llamar el método con el nuevo punto como punto inicial
% y se le resta 1 al contador de llamados.
if(fxk<error || iterations==0)
    return;
else
    xk = newton(fx,xk,iterations-1,error);    
end
