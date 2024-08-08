syms x y z
f(x,y) = sin(x) - cos(y)/x ;
fsurf(f);
axis equal;
hold on
%xlabel('x');
%ylabel('y');
%zlabel('z');
fimplicit(f,'r','LineWidth',3);