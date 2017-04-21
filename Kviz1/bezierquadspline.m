function [b ] = bezierquadspline( points,u)
    m = size(points,1)-2;
    b = zeros(m,3,size(points,2));

    b(1,1,:) = points(1,:);
    b(m,3,:) = points(m+2,:);
    b(m,2,:) = points(m+1,:);
    df = diff(u);

    for i=1:m-1
       b(i,2,:) = points(i+1,:);
       b(i,3,:) = (df(i+1) / (df(i) + df(i+1)))*points(i+1,:) + (df(i) / (df(i) + df(i+1)))*points(i+2,:);
       b(i+1,1,:) = b(i,3,:);
    end

end

