function [ u ] = alphaparam( points, alpha )
    u = zeros(1, size(points,1));
    for i=2:length(u)
        u(i) = u(i-1) + norm(points(i, :) - points(i-1, :))^alpha;
    end
end

