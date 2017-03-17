function [rez] = bezierelv(B,k)
%BEZIERELV Summary of this function goes here
%   Detailed explanation goes here
    n = size(B,2);
    rez = zeros(n+1,1);
    B_elevated = zeros(1,n+1);
    B_elevated(1) = B(1);
    B_elevated(n+1) = B(n);
    
    for i=2:n
       B_elevated(i) = (1-i/(n+1))*B(i) + (i/(n+1))*B(i-1); 
       rez = B_elevated;
    end
    if(k>1)
        rez = bezierelv(B_elevated,k-1);
    end
    
end

