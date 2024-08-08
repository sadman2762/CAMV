clear
syms u v

x(u,v) = u - u^3/3 + u*v^2;
y(u,v) = v - v^3/3 + v*u^2;
z(u,v) = u^2 - v^2;
fsurf(x,y,z,[-25 25 -25 25]);
hold on

axis equal;
xlabel('x');
ylabel('y');
zlabel('z');

u0 = 10; v0 = 15;
P = [x(u0,v0),y(u0,v0),z(u0,v0)];
plot3(P(1),P(2),P(3),'r.', 'MarkerSize',30)

cx(u) = x(u,v0);
cy(u) = y(u,v0);
cz(u) = z(u,v0);
fplot3(cx,cy,cz,[-25 25],'b','LineWidth',3);

dx(v) = x(u0,v);
dy(v) = y(u0,v);
dz(v) = z(u0,v);
fplot3(dx,dy,dz,[-25 25],'r','LineWidth',3);
cxd(u) = diff(cx(u),u);
cyd(u) = diff(cy(u),u);
czd(u) = diff(cz(u),u);
vec = [cxd(u0),cyd(u0),czd(u0)];
quiver3(P(1),P(2),P(3),vec(1),vec(2),vec(3),'y','LineWidth',3);
dxd(v) = diff(dx(v),v);
dyd(v) = diff(dy(v),v);
dzd(v) = diff(dz(v) ,v);
dvec = [dxd(v0),dyd(v0),dzd(v0)];
quiver3(P(1),P(2),P(3),dvec(1),dvec(2),dvec(3),'r','LineWidth',3);
normv = cross(vec,dvec);
quiver3(P(1),P(2),P(3),normv(1),normv(2),normv(3),1,'r','LineWidth',3);
