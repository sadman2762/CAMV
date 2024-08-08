syms x y
F(x,y) = sqrt(1 - x^2 - 0.5*y^2);
fsurf(F);
axis equal;
hold on ;
x0 = 0.5; y0 = 0.2;
P =[x0,y0,F(x0,y0)];
fplot3(P(1),P(2),P(3),'r.','MarkerSize',20)
