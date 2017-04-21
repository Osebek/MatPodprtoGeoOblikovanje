function [ der ] = bezierder( points, ts, r )
    n = size(points,1);
    der = zeros(length(ts), size(points, 2));
    for i = 1:length(ts)
        shema = decasteljau(points, ts(i));
        stolpec = shema(1:(r+1), n-r, :);
        der(i, :) = factorial(n-1) / factorial(n-1-r) * diff(stolpec, r);
    end
end
