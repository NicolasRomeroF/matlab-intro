prompt = 'Ingrese un vector entre corchetes de al menos tamaÃ±o 4: ';

x = [];
% Se solicita un vector de tamaño y se verifica que al menos tenga tamaño 4
while length(x) < 4
    try
        x = input(prompt);
    catch
        disp('El vector ingresado no es valido')
    end
end
% Se ordenan los valores de menor a mayor
x = sort(x);
% Se obtienen los 4 elementos mayores
mayores = x(end-3:end);
% Se suman los 4 mayores
sumaMayores = sum(mayores);
% Se obtiene la raíz cuadrada de la suma de los 4 mayores
raizSumaMayores = sqrt(sumaMayores);
% Se  obtienen los 4 elementos menores
menores = x(1:4);
% Se calcula la raíz cuadrada de los 4 menores
raizMenores = sqrt(menores);
% Se suman las raíces de los 4 elementos menores
sumaRaizMenores = sum(raizMenores);
% Se restan la raíz de la suma de los 4 mayores con la suma de las raíces
% de los 4 menores
resta = raizSumaMayores - sumaRaizMenores

