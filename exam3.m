syms x y z
F(x,y) = sin(x) + cos(y)/x;
fsurf(F);
hold on
fimplicit(F,'r','LineWidth',3)