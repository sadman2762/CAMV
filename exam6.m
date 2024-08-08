px = [-2, 6, 10];
py = [-2, -2, 2];
vx = [6];
vy = [-4];

plot(px, py, '*');
hold on
quiver(px(2), py(2), vx(1), vy(1));

t0 = 0; t1 = 1; t2 = 1.5;

syms b3 b2 b1 b0 a3 a2 a1 a0 t
x(t) = a3*t^3 + a2*t^2 + a1*t + a0;
y(t) = b3*t^3 + b2*t^2 + b1*t + b0;
xd(t) = diff(x(t), t);
yd(t) = diff(y(t), t);

ex = [
    x(t0) == px(1),...
    x(t1) == px(2),...
    x(t2) == px(3),...
    xd(t2) == vx(1)
];

ey = [
    y(t0) == py(1),...
    y(t1) == py(2),...
    y(t2) == py(3),...
    yd(t2) == vy(1)
];