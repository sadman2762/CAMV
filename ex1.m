syms u v
x(u,v) = cos(u)*cos(v);
y(u,v) = sin(u)*cos(v);
z(u,v) = sin(u);
fsurf(x,y,z,[-pi pi -pi pi],'y');
axis equal;
hold on;
xlabel('x');
ylabel('y');
zlabel('z');
v0 = pi/4;
cx(u) =x(u,v0);
cy(u) = y(u,v0);
cz(u) = z(u,v0);
fplot3(cx,cy,cz,[-pi pi],'b','LineWidth',5)