px = [-2, 6];
py = [-2, -2];

vx = [6, 4];
vy = [-4, 4];
plot(px,py,'*');
axis equal;
hold on;
quiver(px(1),py(1),vx(1),vy(1));
quiver(px(2),py(2),vx(2),vy(2));
syms b3 b2 b1 b0 a3 a2 a1 a0 t
t0 = 0; t1 = 1;
x(t) = a3*t^3 + a2*t^2 + a1*t + a0;
y(t) = b3*t^3 + b2*t^2 + b1*t + b0;
xd(t) = diff(x(t),t);
yd(t) = diff(y(t),t);
ex = [
    x(t0) == px(1),...
    x(t1) == px(2),...
    xd(t0) == vx(1),...
    xd(t1) == vx(2)
    ];
ey = [
    y(t0) == py(1),...
    y(t1) == py(2),...
    yd(t0) == vy(1),...
    yd(t1) == vy(2)
    ];
mx = solve(ex,[a3 a2 a1 a0]);
my = solve(ey,[b3 b2 b1 b0]);
cx(t) = mx.a3*t^3 + mx.a2*t^2 + mx.a1*t + mx.a0;
cy(t) = my.b3*t^3 + my.b2*t^2 + my.b1*t + my.b0;
fplot(cx(t),cy(t),[t0 t1])