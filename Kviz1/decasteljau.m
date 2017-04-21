function [ shema ] = decasteljau( b, t )
    n = length(b);
    shema = zeros(n,n,size(b,2));
    shema(:, 1, :) = b;
    for r=2:n
        for i = 1:(n-r+1)
            shema(i, r, :) = (1-t)* shema(i, r-1, :) + t * shema(i+1, r-1, :);
        end
    end
end

