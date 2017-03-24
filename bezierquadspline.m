function [B] = bezierquadspline(u,D)
%BEZIERQUADSPLINE Summary of this function goes here
%   Detailed explanation goes here

m = size(D,1)-2;
mm = size(D,1);
n = size(u,1);
B = zeros(m,3);

B(1,1,1) = D(1,1);
B(1,1,2) = D(1,2);
B(1,2,1) = D(2,1);
B(1,2,2) = D(2,2);
B(m,2,1) = D(mm-1,1);
B(m,2,2) = D(mm-1,2);
B(m,3,1) = D(mm,1);
B(m,3,2) = D(mm,2);

for l=2:m-1
    B(l,2,1) = D(l,1);
    B(l,2,2) = D(l,2);
    B(l,3,1) = (delta(u,l)/(delta(u,l-1) + delta(u,l)))*D(l,1) + (delta(u,l-1)/(delta(u,l-1)+delta(u,l)))*D(l+1,1);     
    B(l,3,2) = (delta(u,l)/(delta(u,l-1) + delta(u,l)))*D(l,2) + (delta(u,l-1)/(delta(u,l-1)+delta(u,l)))*D(l+1,2);
    B(l+1,1,1) = B(l,3,1);
    B(l+1,1,2) = B(l,3,2);                
end

end

function [X] = delta(u,l)
X = u(l+1) - u(l);
end