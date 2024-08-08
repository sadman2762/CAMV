syms u v 
x(u,v) = 2*cos(u);
y(u,v) = 3*cos(v);
z(u,v) = u + v;
fsurf(x,y,z,[0 2*pi 0 15]);
axis equal;
hold on;
u0 = pi/2;
v0 = 6;
P=[x(u0,v0),y(u0,v0),z(u0,v0)];
plot3(P(1),P(2),P(3),'r.','MarkerSize',60);