% Tutorial: Introducción a MATLAB

% Descripción: Primeros pasos para programar en MATLAB

% Autor: Ing. Daniel Saromo Mori

%% Creacion de vectores y matrices

% creacion de un vector
a = [0,1,2,3,4];

% vectores con elementos igualmente espaciados
b = [0:0.1:10];
% creacion de una matriz
mm = [1,3,5;
      2,9,0];

% nan

c = [nan, nan, nan, nan];

% acceder a un elemento de un vector / matriz

c = mm(2,3);

% Variables reservadas

% Comandos comunes: clear, close, clc

% Si quiero calcular la raiz cuadrada?

%% Condicionales

clear

entrada = input('Ingrese su edad:\n');

if entrada > 17
    disp('Puedes votar');
else
    disp('No puedes votar');
end


%% Otra manera de ingresar por el teclado

entrada = input('Ingrese su edad');
nombre = input('Ingrese su nombre', 's');

if entrada > 17
    disp('Puedes votar');
elseif entrada == 15
    fprintf('%s, tienes 15', nombre);
else
    disp('Tienes menos de 18 años');
end

fprintf('%s, tu edad es %d', nombre, entrada);


%% Bucle for

for i = [4:5]
    
    fprintf('El indice es: %d XD.\n', i);
end


%% Bucle while
% tener cuidado!
n = 8;
while n < 10
    
    disp(n);
    n = n-1;
end

%% Interrupción del bucle más interno
%disp('Hola')
clc
% Dos for anidados iterando de 0 a 4. Cuando la suma de los iteradores es 2 rompe el loop interno 
for i = [1:5]
    for j = 1:5
        if (i + j) == 2
            continue    % rompe el for interno cuando i+j es igual a 2
        end
        %disp('hola')
        fprintf('El primer numero es %d, y el segundo es %d\n',i,j)
    end
end

