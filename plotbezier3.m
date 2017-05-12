function [ output_args ] = plotbezier3(Bx,By,Bz,D,mesh)
% UNFINISHED, STARTED THE GENERAL IDEA
n = size(X)

x_tri = [];
y_tri = [];
z_tri = [];
for i = 1:N-1 
    for j = 1:N-i
        triangleX = [Bx(i,j) Bx(i+1,j) Bx(i,j+1)];
        triangleY = [By(i,j) By(i+1,j) By(i,j+1)];
        triangleZ = [Bz(i,j) Bz(i+1,j) Bz(i,j+1)];
        
        x_tri = [x_tri triangleX]
        y_tri = [y_tri triangleY]
        z_tri = [z_tri triangleZ]
        
    end
end



end

