function [matrix] = beziersub(B,t,k)
        dcjSheme = decasteljau(B,t);
        side1 = dcjSheme(1,:);
        n = size(dcjSheme,2);
        i=1;
        j=n;
        side2 = zeros(1,n);
        for i=1:j
            side2(i) = dcjSheme(i,n-i+1);
        end

       fliplr(side2)
       matrix(1,:) = side1;
       matrix(2,:) = side2;
       if (k>1)
       matrix = cat(1,beziersub(side1,t,k-1),beziersub(side2,t,k-1));
       end
      
end
   
   
   

