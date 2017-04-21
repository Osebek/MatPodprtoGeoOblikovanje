function [ b ] = beziercubspline( points, u )
    m = size(points,1)-3;
    b = zeros(m,4,size(points,2));
    df = diff(u);
    
    b(1,1,:) = points(1,:);
    b(1,2,:) = points(2,:);
    b(m,4,:) = points(m+3,:);
    b(m,3,:) = points(m+2,:);
    
    b(1,3,:) = df(2) / (df(1) + df(2))* points(2,:) + df(1) / (df(1) + df(2)) * points(3,:);
    b(m, 2,:) = df(m) / (df(m-1) + df(m)) * points(m+1,:) + df(m-1) / (df(m-1) + df(m)) * points(m+2,:);
    
    for i = 1:m-1
        if(i <= m-2)
            bot = df(i) + df(i+1) + df(i+2);
            b(i+1,2,:) = (df(i+1) + df(i+2)) / bot * points(i+2, :) + df(i) / bot * points(i+3, :);
            b(i+1,3,:) = df(i+2) / bot * points(i+2, :) + (df(i) + df(i+1)) / bot * points(i+3, :);
        end
        b(i+1,1,:) = df(i+1) / (df(i) + df(i+1)) * b(i,3,:) + df(i) / (df(i) + df(i+1)) * b(i+1,2,:);
        b(i,  4,:) = b(i+1,1,:);
    end
    
end

