function [U,X,Y,A,B] = resiPoissonDif(a,b,c,d,F,Gc,Gd,Ga,Gb,J,K)
%RESIPOISSIONDIF Summary of this function goes here
%   Detailed explanation goes here

delta_x = 1 / (J+1);
delta_y = 1 / (K+1);
delta = (delta_x^2 + delta_y^2) / 2*(delta_x^2 + delta_y^2);

grid_x = linspace(a,b,(b-a)/delta_x)
grid_y = linspace(c,d,(d-c)/delta_y)

[X,Y] = meshgrid(grid_x,grid_y);

diag1 = ones(1,J*K)';
diag2 = (ones(1,J*K)*(-delta_x))';
diagblock = spdiags([diag2 diag1 diag2],[-1, 0, 1],J*K,J*K)



end

