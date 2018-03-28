h = linspace(0,0.001,10000);
u = @(x,y)exp(-x.^2-y.^2);
rez = zeros(size(h,2),2)
for i=1:size(h,2)
   diff = abs(4+laplace(u,0,0,h(i)));
   rez(i,1) = h(i) ;
   rez(i,2) = diff;
end

plot(rez(:,1),rez(:,2))