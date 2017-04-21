function [tocke] = plotrbezier( points, ts )

    tocke = bezier(points, ts);    
    hold on
    if (size(tocke, 2) == 3)
        plot3(points(:, 1), points(:, 2), points(:, 3));
        plot3(tocke(:, 1), tocke(:, 2), tocke(: ,3)); 
    elseif (size(tocke, 2) == 2)
        plot(tocke(:, 1), tocke(:, 2));
        plot(points(:, 1), points(:, 2));
    end
    hold off
end

