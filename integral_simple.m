clear;
a = 0; b = 2;
n_rec = 100;
delta_x = (b-a)/n_rec;
x = a:delta_x:b; %EL dx se puede hacer de esta forma.
f=funcion(x);
area_Integral = integral(f,a,b); %Calculo integral para comprobar el resultado de Riemann.
area_R = 0; 
area_L = 0;
%Puse los dos juntos, puedes separarlos, es lo mismo en realidad.
for i = 1:n_rec
    area_R = area_R + f(x(i + 1))*delta_x;
    area_L = area_L + f(x(i))*delta_x;
end
resultados = table(area_Integral,area_L,area_R)