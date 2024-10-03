syms x y z
% x^2 + y^2 + z^2 = 1
F(x,y,z)=x^2+y^2+z^2-1;
fimplicit3(F, [-0.8 0.8 -0.8 0.8 -0.8 0.8])
axis equal
double(F(0,0.5,0.5))
F(2,3,4)
