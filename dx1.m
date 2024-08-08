syms u v 
x(u,v) = cos(u)*cos(v);
y(u,v) = sin(u)*sin(v);
z(u,v) = sin(u);
fsurf(x,y,z,[-pi pi -pi pi]);
axis equal
hold on
v0 = pi/4;
cx(u) = x(u,v0);
cy(u) = y(u,v0);
cz(u) = z(u,v0);
fplot3(cx,cy,cz,'r','LineWidth',5);