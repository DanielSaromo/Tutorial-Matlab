x = [1 2 3 4];
y = [10 20 30]

disp('Vector x')
disp(x)

disp('')
disp('Extremos izquierdos y derechos')
disp([  x(1:end-1);x(2:end)  ])

disp('')
disp('Usamos la función reshape para X')
disp(reshape([  x(1:end-1);x(2:end)  ],1,[])) %qué hace []? doc/help

disp('')
disp('Usamos la función reshape para Y')
disp(reshape([y;y;],1,[])) %cada escalón repite 2 veces el valor de y

figure
plot([0,1,3], [2, 5, 7]) %componentes X y luego componentes Y

figure
steps = @(x,y) plot(reshape([  x(1:end-1);x(2:end)  ],1,[]),reshape([y;y;],1,[]));

%usamos la funcion steps
steps(x, y) %veámoslo con un zoom!