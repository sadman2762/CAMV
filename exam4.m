syms x y
f(x,y) = x + y;
fsurf(f,'b');
hold on

g(x,y) = (x-2*y-4)/3;
fsurf(g,'g');

h(x,y) =(2*x - 0.5*y + 2);
fsurf(h,'r');