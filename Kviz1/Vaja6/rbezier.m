function [ krivulja ] = rbezier( points, weights, ts )
    krivulja = zeros(length(ts), size(points, 2));
    for i = 1:length(ts)
        shema = rdecasteljau(points, weights, ts(i));
        krivulja(i, :) = squeeze(shema(1, length(points), :))';
    end
end
