function [bx,by,bz] = beziersurf(Bx,By,Bz,u,v)
%BEZIERSURF Summary of this function goes here
%   Detailed explanation goes here
    M = size(u,2);
    N = size(v,2);
    m = size(Bx,1);
    n = size(Bx,2);
    bx = zeros(M,N);
    by = zeros(M,N);
    bz = zeros(M,N);
    
    for k=1:M
        currV = v(k);
        for l=1:N
            currU = u(l);
            tocke = zeros(m,3)
            for i=1:m
               currX = Bx(:,i);
               currY = By(:,i);
               currZ = Bz(:,i);
               cpoints = [currX currY currZ];
               dcjShema = decasteljau(cpoints,currV);
               a = squeeze(dcjShema(1,m,:));
               tocke(i,:) = a;
            end
            finalDcj = decasteljau(tocke,currU);
            finalP = squeeze(finalDcj(1,size(finalDcj,1),:));
            bx(k,l) = finalP(1);
            by(k,l) = finalP(2);
            bz(k,l) = finalP(3);
   
        end
    end
    
    
end
        



