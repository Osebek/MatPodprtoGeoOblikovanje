m = input('Vnesi stevilo odsekov: ');
j = 0;
p = zeros(m,2);
hold on;
axis([-5 5 -5 5]);
for i=1:m
    xy = ginput(1);
    p(i,:) = xy;
    plot(xy(1),xy(2),'s','MarkerSize',5,'MarkerFaceColor','b'); 
    hold on;
end
hold on;
   plot(p(:,1),p(:,2))
   hold on;
    



