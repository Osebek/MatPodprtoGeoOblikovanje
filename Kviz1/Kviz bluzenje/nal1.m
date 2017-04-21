seme = 36; rand('seed', seme); a = rand(1);


tocke(1,:) = [a 1]
tocke(2,:) = [-1+6+a,5-4+1]
polinom = polyfit(tocke(:,1),tocke(:,2),2)

bernsteinBaza = ptb(polinom)
 

tocka2 = [(-1/4 + 3 + a), (5*(1/2)^2 -4 +1)] / bernsteinBaza(2) 
norma = norm(tocka2)