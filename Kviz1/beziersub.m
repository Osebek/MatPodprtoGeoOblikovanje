function [ newpoints ] = beziersub( points, del, k )
    newpoints = zeros(size(points, 1), size(points, 2), 2);
    
    shema = decasteljau(points, del);
    l = squeeze(shema(1,:,:));
    d = zeros(size(shema,1), size(shema,3));
    for i = 1:size(shema,1)
        d(i,:) = shema(i, size(shema,1)-i+1, :);
    end
    newpoints(:, :, 1) = l;
    newpoints(:, :, 2) = d;
    
    if(k ~= 1)
        newpoints = cat(3, beziersub(l, del, k-1), beziersub(d, del, k-1));
    end
end
