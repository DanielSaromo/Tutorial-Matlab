clear, clc
x = linspace(0,10*pi,1000);
y = cos(x);
z = sin(x);
plot3(x,y,z)
grid
xlabel('angle')
ylabel('cos(x)')
zlabel('sin(x)')
title('Una helicoide')