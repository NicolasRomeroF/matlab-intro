function xk = newton (fx,x0,iterations,error)
syms x
disp("X0:");
disp(x0)
disp("iteracion:");
disp(iterations);
% Se eval�a x0 en la funci�n
fx0=polyval(fx,x0);
% Se deriva la funci�n
df=polyder(fx);
% Sse evalua x0 en la funci�n derivada
dfx0=polyval(df,x0);
% Se calcula nuevo punto
xk = x0-fx0/dfx0;
Se evalua nuevo punto en la funci�n
fxk=polyval(fx,xk);


disp("xk:");
disp(xk);
% Si el error es mayor que la funci�n en el nuevo punto o si no quedan m�s
% llamados recusrivos, se devuelve el nuevo punto
% Sino, se vuelve a llamar el m�todo con el nuevo punto como punto inicial
% y se le resta 1 al contador de llamados.
if(fxk<error || iterations==0)
    return;
else
    xk = newton(fx,xk,iterations-1,error);    
end
