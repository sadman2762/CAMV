syms x y
f(x,y) = sin(x) + cos(y);
fsurf(f);
axis equal;
hold on;

xlabel('x');
ylabel('y');
zlabel('z');

plot3(2,3,f(2,3),'y*','MarkerSize',8);

fimplicit(f,'r','LineWidth',3);
%%
syms x y z 
F(x,y,z) = x^2 + y^2 + z^2 -1;
fimplicit3(F);
axis equal;
%%
syms u v
R = 2; r = 1;
sx(u,v) = (R + r*cos(v)) * cos(u);
sy(u,v) = (R + r*cos(v)) * sin(u);
sz(u,v) = r * sin(v);

fsurf(sx,sy,sz,[0 2*pi 0 2*pi],'y');
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');

u0 = pi/2;
v0 = pi/4;
P = [sx(u0,v0),sy(u0,v0),sz(u0,v0)];
hold on;
plot3(P(1),P(2),P(3),'r.','MarkerSize',10);

cx(u) = sx(u,v0);
cy(u) = sy(u,v0);
cz(u) = sz(u,v0);

fplot3(cx,cy,cz,[0 2*pi],'g','LineWidth',3);

dx(v) = sx(u0,v);
dy(v) = sy(u0,v);
dz(v) = sz(u0,v);
fplot3(dx,dy,dz,[0 2*pi],'b','LineWidth',3);

cxd(u) = diff(cx,u);
cyd(u) = diff(cy,u);
czd(u) = diff(cz,u);

vec = [cxd(u0),cyd(u0),czd(u0)];
quiver3(P(1),P(2),P(3),vec(1),vec(2),vec(3),'g','LineWidth',3);

dxd(v) = diff(dx,v);
dyd(v) = diff(dy,v);
dzd(v) = diff(dz,v);
dvec=[dxd(v0),dyd(v0),dzd(v0)];
quiver3(P(1),P(2),P(3),dvec(1),dvec(2),dvec(3),'b','LineWidth',2);

normv = cross(vec,dvec);
quiver3(P(1),P(2),P(3),normv(1),normv(2),normv(3),1,'r','LineWidth',2);

