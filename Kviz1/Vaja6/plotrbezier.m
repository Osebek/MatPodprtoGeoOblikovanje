function [tocke] = plotrbezier( points,w,ts,c,f)
    q = zeros(size(points,1)-1,size(points,2));
    tocke = rbezier(points,w, ts);    
    hold on
    if (size(tocke, 2) == 3)
        plot3(points(:, 1), points(:, 2), points(:, 3));
        plot3(tocke(:, 1), tocke(:, 2), tocke(: ,3)); 
    elseif (size(tocke, 2) == 2)
        plot(tocke(:, 1), tocke(:, 2),c);
        plot(points(:, 1), points(:, 2),'black');
        scatter(points(:,1),points(:,2),c);
    end
    %xlim([-5 5])
    %ylim([-5 5])
    for i=1:size(points,1)-1
        a = (w(i) / (w(i) + w(i+1)))*points(i,:);
        b = (w(i+1) / (w(i) + w(i+1)))*points(i+1,:);
        q(i,:) = a + b;
    end
    if f==1
        plot(q(:,1),q(:,2),'r*');
    end
    hold off
end
