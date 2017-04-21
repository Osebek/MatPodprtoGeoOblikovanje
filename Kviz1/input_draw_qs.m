m = input('Vnesi stevilo odsekov: ');

points = zeros(m+2,2);

hold on;
xlim([0 10])
ylim([0 10])

for i=1:m+2
   [x,y] = ginput(1);
   points(i,1) = x;
   points(i,2) = y;
   scatter(x,y);
end


u = linspace(0,1,10);
for i=1:length(u)
    uf  = alphaparam(points(1:m+1,:),u(i));
    plotbezierqs(points,uf);
    hold on;
   
end


hold off;