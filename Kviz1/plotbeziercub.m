function [ ] = plotbeziercub(points,u)
  ts = u(6)/2
  cubs = beziercubspline(points,u);
  for i=1:size(cubs,1)
     tocke = plotbezier(squeeze(cubs(i,:,:)),ts);
     dist = norm(points(1,:) - tocke)
     hold on;
  end
  hold off;

end

