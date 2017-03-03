function [b] = bezier(B,t)
%BEZIER Summary of this function goes here
%   B ... control points
%   t ... values of parameter

n = size(B,2);
D = decasteljau(B,t);
b = zeros(size(t,1));

for k=1:size(t,2)
    b(k) = 0;
   for i=1:n
       b(k) = b(k) + B(i) + D(i,n);  
   end
end
    


end

