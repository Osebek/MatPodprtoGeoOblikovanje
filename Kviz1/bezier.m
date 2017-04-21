function [ krivulja ] = bezier( points, ts )
    krivulja = zeros(length(ts), size(points, 2));
    for i = 1:length(ts)
        shema = decasteljau(points, ts(i));
        krivulja(i, :) = squeeze(shema(1, length(points), :))';
    end
    
end