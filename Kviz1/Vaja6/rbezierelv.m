function [ nCurve, weights] = rbezierelv(B,w)
%RBEZIERELV Summary of this function goes here
%   Detailed explanation goes here
    d = size(B,2);
    curve = zeros(size(B,1),d+1);
    for i=1:size(B,1)
       curve(i,1:d) =  w(i)*B(i,:);
       curve(i,d+1) = w(i);
    end
    
    elevatedCurve = bezierelv(curve,1);
    
    weights = elevatedCurve(:,size(elevatedCurve,2));
    nCurve = zeros(size(B,1)+1,size(B,2));
    for i=1:size(elevatedCurve,2)-1
        b = elevatedCurve(:,i);
        x = b / weights;
        z = x (:,1);
        nCurve(:,i) = z;
    end
    
    
    


end

