function xk = newton (fx,x0,iterations,error)
syms x
disp("X0:");
disp(x0)
disp("iteracion:");
disp(iterations);

fx0=polyval(fx,x0);
df=polyder(fx);
dfx0=polyval(df,x0);
xk = x0-fx0/dfx0;
fxk=polyval(fx,xk);


disp("xk:");
disp(xk);
if(fxk<error || iterations==0)
    return;
else
    xk = newton(fx,xk,iterations-1,error);    
end
