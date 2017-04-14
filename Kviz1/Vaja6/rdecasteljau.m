function [ shema ] = rdecasteljau( b,w,t )
    n = length(b);
    shema = zeros(n,n,size(b,2));
    shema(:, 1, :) = b;
    weights = zeros(n);
    weights(:,1) = w;
    for r=2:n
        for i = 1:(n-r+1)
            weights(i,r) = (1-t)*weights(i,r-1) + t*weights(i+1,r-1);  
            a = (weights(i,r-1)/weights(i,r))*shema(i,r-1,:);
            b = (weights(i+1,r-1)/weights(i,r))*shema(i+1,r-1,:);
            shema(i, r, :) = (1-t)*a + t*b;
        end
    end
end

