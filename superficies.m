clear, clc
x= [-2:0.2:2]; y= [-2:0.2:2];
[X,Y] = meshgrid(x,y); Z = X.*Y.*exp(-X.^2 - Y.^2);
subplot(2,2,1)
mesh(X,Y,Z)
title('Mesh Plot'), xlabel('x-axis'), ylabel('y-axis'),
zlabel('z-axis')
subplot(2,2,2)
surf(X,Y,Z)
title('Surface Plot'), xlabel('x-axis'), ylabel('y-axis'),
zlabel('z-axis')
subplot(2,2,3)
contour(X,Y,Z)
xlabel('x-axis'), ylabel('y-axis'), title('Contour Plot')
subplot(2,2,4)
surfc(X,Y,Z)
xlabel('x-axis'), ylabel('y-axis')
title('Combinación: Surface Plot + Contour Plot')