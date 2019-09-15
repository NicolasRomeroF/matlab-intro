prompt = 'Ingrese un vector entre corchetes de al menos tamaño 4: ';

x = [];

while length(x) < 4
    try
        x = input(prompt);
    catch
        disp('El vector ingresado no es valido')
    end
end

x = sort(x);

mayores = x(end-3:end);
sumaMayores = sum(mayores);
raizSumaMayores = sqrt(sumaMayores);

menores = x(1:4);
raizMenores = sqrt(menores);
sumaRaizMenores = sum(raizMenores);

resta = raizSumaMayores - sumaRaizMenores

