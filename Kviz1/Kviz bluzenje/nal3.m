seme = 33; rand('seed', seme); c = 4+rand(1);

points(1,:) = [2 c];
points(1,:)
points(2,:) = points(1,:) + [2 4];
points(4,:) = [4 -2];
points(3,:) = points(4,:) + [c 1];

p = points
delitev = beziersub(points,1/2,1)