function [ np ] = bezierelv( points, k )
    n = size(points,1);
    np = zeros(n+k, size(points,2));
    for i=1:(n+k)
        sum = zeros(1,size(points,2));
        for j=1:n
            if(j <= n && 0 <= i-j && i-j <= k && i <= n+k)
                sum = sum + points(j,:) * nchoosek(n-1,j-1) * nchoosek(k, i-j) / nchoosek(n-1+k, i-1);
            end
        end
        np(i, :) = sum;
    end
end

