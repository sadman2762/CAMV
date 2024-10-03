syms x y 
F(x,y)=sin(x) + cos(y);
fsurf(F,[-6 6 -6 6])
axis equal
xlabel('x')
ylabel('y')
zlabel('z')
hold on
% x0 = -2
% y0 = 2
plot3(-2,2,F(-2,2),'r.', 'MarkerSize', 10)
fimplicit(F, 'r', 'LineWidth', 3)
