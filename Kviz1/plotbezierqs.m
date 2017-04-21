function [ ] = plotbezierqs(points,u)
  ts = linspace(0,1,100);
  qs = bezierquadspline(points,u);
  for i=1:size(qs,1)
     plotbezier(squeeze(qs(i,:,:)),ts);
     hold on;
  end
  hold off;

end

