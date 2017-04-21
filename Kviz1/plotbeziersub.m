function [ ] = plotbeziersub( points, ts, del, k)

    subs = beziersub(points, del, k);
    for i = 1:size(subs,3)
        plotbezier(subs(:, :, i), ts);
        hold on;
    end
    
    hold off;

end

