syms x
f(x) = sin(x);
fplot(f, 'b');
axis([-4*pi 4*pi -2 2]);
axis equal
figure
fplot(f,[-10 6],'r','LineWidth',3);
hold on;
plot(3,f(3),'k*','MarkerSize',15)
%%
syms x y
F(x,y) = x^2 + y^2 -1;
fimplicit(F,[-10 10 -10 10]);
axis equal;
%%
syms t
x(t) = t * cos(t);
y(t) =t * sin(t);
fplot(x(t),y(t),[0 12*pi]);
axis equal;
hold on
t0 =5*pi;
plot(x(t0),y(t0),'r*','MarkerSize',15);
%%
syms t
cx(t) = t * cos(t);
cy(t) = t * sin(t);
cz(t) = t;
fplot3(cx(t),cy(t),cz(t),[0 20*pi]);
hold on;
t0 = 10*pi;
plot3(cx(t0),cy(t0),cz(t0),'r*','MarkerSize',30);

axis equal;
xlabel('x');
ylabel('y');
zlabel('z');

cxd(t) = diff(cx,t);
cyd(t) = diff(cy,t);
czd(t) = diff(cz,t);

quiver3(cx(t0),cy(t0),cz(t0),cxd(t0),cyd(t0),czd(t0),'r','LineWidth',2)

