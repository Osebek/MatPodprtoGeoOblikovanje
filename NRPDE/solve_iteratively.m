function solve_iteratively(a,b,c,d,F,Gc,Gd,Ga,Gb,J,K,U0,T,S,M)

lr_cond = linspace(a,b,J+2);
ud_cond = linspace(c,d,K+2);
a_cond = arrayfun(Ga,lr_cond);
b_cond = arrayfun(Gb,lr_cond);
c_cond = arrayfun(Gc,ud_cond);
d_cond = arrayfun(Gd,ud_cond);

U0 = [zeros(1,size(U0,1)) ; U0 ; zeros(1,size(U0,1))];
pad = zeros(size(U0,1),1);
U0 = [pad  U0];
U0 = [U0 pad];

U0(1,:) = d_cond;
U0(size(U0,1),:) = c_cond;
U0(:,1) = a_cond;
U0(:,size(U0,2)) = b_cond; 

delta_x = (b-a)/(J+1) ;
delta_y = (d-c)/(K+1) ; 
delta_sq = (delta_x^2*delta_y^2)/2*(delta_x^2 + delta_y^2);
omega_x = delta_sq / delta_x^2 ;
omega_y = delta_sq / delta_y^2 ; 


for j=2:(J+2)-1
    for k=2:(K+2)-1
        b(j,k) = delta_sq*F(lr_cond(j),ud_cond(k));
    end
end

s = 1; 
A = U0;
M = diag(A);



