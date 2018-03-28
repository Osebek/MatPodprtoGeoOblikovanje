function lu = laplace(u,x,y,h)

% u function of two variables
% x,y coordinates of the point in domain 
% h offset (used for approximation) in x and y direction 
% output b

% u(x,y) e^-(x^2-y^2)
% Use mathematica to compute the exact value...



lu = (u(x-h,y)+u(x+h,y)+u(x,y-h)+u(x,y+h)-4*u(x,y))/h^2;