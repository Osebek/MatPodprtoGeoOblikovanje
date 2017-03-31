
function B = beziercubspline(u,D)
%BEZIERCUBSPLINE Summary of this function goes here
%   Detailed explanation goes here

n = size(D,1);
m = n-1;
b = zeros(n,4,size(D,2));
b(1,1,:) = D(1,:);
b(2,1,:) = D(2,:);
df = diff(u);


b31_f = (df(2)*D(1,:))/ (df(1)+df(2));
b31_s = (df(1)*D(2,:)) / (df(1) + df(2));
b(3,1,:) = b31_f + b31_s;

b2m_a = (df(m-1)*D(m-1,:))/(df(m-2)+df(m-1));
b2m_b = (df(m-2)*D(m,:)) / (df(m-2)+df(m-1));
b(2,m) =  b2m_a + b2m_b;
b(4,m,:) = D(m+1,:);
b(3,m,:)  =D(m,:);

for i=2:m-2
    b(2,i+1) = calc_b1(u,i,D);
    b(3,i+1) = calc_b2(u,i,D);
    b(4,i) = calc_b3(u,i,b(3,i),b(2,i+1));
    b(1,i+1) = b(4,i);
end


end


function el = calc_b1(i,D)

a =((df(i) + df(i+1))*D(i,:))/(df(i-1)+df(i)+df(i+1));
b = (df(i-1)*D(i+1,:))/(df(i-1)+df(i)+df(i+1));
el = a + b;
end

function el = calc_b2(i,D)
a = (df(i+1)*D(i,:))/(df(i-1)+df(i)+df(i+1));
b = ((df(i-1)+df(i))*D(i+1,:))/(df(i-1)+df(i)+df(i+1));
el = a+b;
end

function el = calc_b3(i,b1,b2)
        a = (df(i)*b1) / (df(i-1) + df(i));
        b = (df(i-1)*b2) / (df(i-1) + df(i)); 
        el = a+b;
end
        
        
        
        
        