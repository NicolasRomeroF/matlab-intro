prompt = 'Ingrese un vector entre corchetes de al menos tamaño 4: ';

x = [];
% Se solicita un vector de tama�o y se verifica que al menos tenga tama�o 4
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
% Se obtiene la ra�z cuadrada de la suma de los 4 mayores
raizSumaMayores = sqrt(sumaMayores);
% Se  obtienen los 4 elementos menores
menores = x(1:4);
% Se calcula la ra�z cuadrada de los 4 menores
raizMenores = sqrt(menores);
% Se suman las ra�ces de los 4 elementos menores
sumaRaizMenores = sum(raizMenores);
% Se restan la ra�z de la suma de los 4 mayores con la suma de las ra�ces
% de los 4 menores
resta = raizSumaMayores - sumaRaizMenores

