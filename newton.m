function xk = newton (fx,x0,iterations)
syms x
disp("X0:");
disp(x0)
disp("iteracion:");
disp(iterations);

fx0=subs(fx,x0);
df=diff(fx);
dfx0=vpa(subs(df,x,x0));
xk = x0-fx0/dfx0;
fxk=subs(fx,xk);


disp("xk:");
disp(xk);
if(fxk<0.0000001 || iterations==0)
    return;
else
    xk = newton(fx,xk,iterations-1);    
end
