function [b] = vaje2_pretvori(p)
%VAJE2_PRETVORI Summary of this function goes here
%   Detailed explanation goes here
p = fliplr(p);
n = size(p,2);
b = zeros(1,n);
for i=1:n
    b_new = zeros(size(b));
    for j=i:n
        b_new(j) = nchoosek(j,i-1)/nchoosek(n,i-1);
    end
    b = b + b_new*p(i);
end




end


