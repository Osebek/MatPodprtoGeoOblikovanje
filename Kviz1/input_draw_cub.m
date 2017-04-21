m = input('Vnesi stevilo odsekov: ');

points = zeros(m+3,2);

hold on;
xlim([0 10])
ylim([0 10])

for i=1:m+3
   [x,y] = ginput(1);
   points(i,1) = x;
   points(i,2) = y;
   scatter(x,y);
end


for alpha=0:0.1:1
    u = alphaparam(cat(1, points(1,:), points(3:m+1,:), points(m+3,:)),alpha);
    plotbeziercub(points,u);
    hold on;
   
end


hold off;