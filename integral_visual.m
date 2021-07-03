close all;
clear;
clc;

disp('Integral mediante Sumas de Riemann');
f = @(x) x.^3+2;  %definimos una función escalar f de variable escalar x


%%%Ingreso de los datos de entrada para cada figura
titulo = 'Integral mediante Sumas de Riemann!';
prompt = {'Ingrese el valor izquierdo del intervalo:', ...
    'Ingrese el valor derecho del intervalo', ...
    'Ingrese la cantidad de rectángulos', ...
    'Ingrese el valor exacto de la integral en el intervalo ingresado', ...
    'Ingrese un vector :)'};

datosinicio = {'0','1.5', '5', '1.23', '10 20 30'};

resp = inputdlg(prompt,titulo,[1 75],datosinicio); %ancho de la caja de entrada

aa=sscanf(resp{1},'%f'); %inicio del intervalo
bb=sscanf(resp{2},'%f'); %final del intervalo
N=sscanf(resp{3},'%f'); %cantidad de rectángulos
exactValue=sscanf(resp{4},'%f'); %integral exacta
vecto=sscanf(resp{5},'%f')'.*2; %vector de entrada (transpuesto)

disp('El doble del vector es:')
disp(vecto);


figure('Name','Riemann sums'); % creamos una figura
hold on;% mostrar varios plots en la misma figura


t=[aa:0.01:bb]; %intervalo de espaciado fino
plot(t,f(t)); %mostramos una "curva"

%calculamos la longitud de cada sub-intervalo
dx = (bb - aa)/N;
%creamos un vector con valores desde aa hasta bb con step size dx
x=[aa:dx:bb];

%% Riemann por la izquierda: https://en.wikipedia.org/wiki/Riemann_sum
%grabamos los primeros N valores (todos menos el último): equises de la izq
xLeft = x(1:end-1);
%calculamos la suma de riemann por la izquierda sin usar for (método optimizado matricialmente)
sumLeft = sum(f(xLeft).*dx)

%Reutilizamos la función steps que ya creamos
steps = @(x,y) plot(reshape([  x(1:end-1);x(2:end)  ],1,[]),reshape([y;y;],1,[]));

%mostramos la función escalonada por la izquierda
steps(x,f(xLeft));

%% Riemann por la derecha

%calculamos la suma de riemann con rectángulos por la derecha
xRight = x(2:end);
sumRight = sum(f(xRight).*dx)

%mostramos la función escalonada por la derecha
steps(x,f(xRight));

%% Aproximación trapezoidal

sumTrap = (sumRight + sumLeft)/2

%el área de esta aproximación es la resultante de graficar la función
%linearizada por partes (unir puntos con el espaciado no fino)

% Ploteamos la función linear por partes:
% (x(1), y(1)), (x(2),y(2)), (x(3),y(3)),...
plot(x,f(x), 'k');

%% Cálculo del error

%Error porcentual de la mejor aproximación que tenemos. Cuál es?
error = abs((sumTrap - exactValue)/exactValue)*100
