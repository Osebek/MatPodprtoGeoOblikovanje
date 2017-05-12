function b = decasteljau3(Bx,By,Bz,U)
u = U(1);
v = U(2);
w = U(3);
r = size(Bx,1) -1 ;
for r=1:n
    for j = 1:n-r
        for i = 1: n
        Bx(i,j) = u*Bx(i,j) + v*Bx(i,j+1) + w*Bx(i+1,j);
        By(i,j) = u*Bx(i,j) + v*Bx(i,j+1) + w*Bx(i+1,j);
        Bz(i,j) = u*Bx(i,j) + v*Bx(i,j+1) + w*Bx(i+1,j);
        end
    end
end
b = [Bx(1,1) By(1,1) Bz(1,1)]
    
    
