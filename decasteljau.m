function [D] = decasteljau(B,t)
%DECASTELJAU Summary of this function goes here
%   t_val ... single value from t 
%   B    .... control points
% D .... 2d matrix
D=zeros(size(B,2),size(B,2));
D(:,1) = B;
for r=2:size(B,2)
    for i = 1:(size(B,2))+1-r
        D(i,r) = (1-t) * D(i,r-1) + t * D(i+1,r-1)       
    end
    
end
end

