function [ output_args ] = plotbezier(Bx,By)
    n = size(Bx,1)
    k = size(Bx,2)
    for i=1:n
        plot(Bx(i,:),By(i,:),'black');
        scatter(Bx(i,:),By(i,:),'red');
        hold on;
end

