syms u v
x(u,v) = cos(u) * cos(v);
y(u,v) = sin(u) * cos(v);
z(u,v) = sin(u);
fsurf(x,y,z,[-pi pi/2 -pi/2 pi]);
axis equal
hold on
u0 = pi/4; v0 = pi/4;
plot3(x(u0,v0),y(u0,v0),z(u0,v0),'r.','MarkerSize',20)