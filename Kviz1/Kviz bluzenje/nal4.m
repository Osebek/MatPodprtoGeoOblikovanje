seme = 1; rand('seed', seme); d = rand(1);
D = zeros(8,2)
for i=1:8
    D(i,:) = [sin(pi*(i-2)/3) 2*cos(pi*(i-2)/4)];
end

u = alphaparam(D([1 3 4 5 6 8],:),d)
df = diff(u)
max(diff(u))

kubicnaKrivulja = beziercubspline(D,u)

t = u(6)/2
%kos = squeeze(kubicnaKrivulja(1,:,:))
%tocka  = bezier(kos,t)
%razdalja = norm(tocka - D(1,:))

plotbeziercub(D,u)