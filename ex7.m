syms x y 
f(x,y) = sin(x) + cos(y^2);
fsurf(f);
axis equal
hold on
x0 = -2.5;
y0 = 1.1;
P = [x0,y0,f(x0,y0)];
plot3(P(1),P(2),P(3),'r.','MarkerSize',30)