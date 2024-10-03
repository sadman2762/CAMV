% We have two points, P0(2,2), P1(8,1), two tangent vectors, v0(1,3), v1(2,-3)
px = [2, 8];
py = [2, 1];
vx = [1, 2];
vy = [3, -3];
plot(px, py, 'o')
axis equal
axis([0 10 -4 6])
hold on
quiver(px(1), py(1), vx(1), vy(1));
quiver(px(2), py(2), vx(2), vy(2));

t0 = 0; t1 = 1;

syms a3 a2 a1 a0 t
x(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0
xd(t) = diff(x(t), t)

ex = [
    x(t0) == px(1), ...
    x(t1) == px(2), ...
    xd(t0) == vx(1), ...
    xd(t1) == vx(2)
]

mx = solve( ex, [a3 a2 a1 a0] )
mx.a3

cx(t) = mx.a3 * t^3 + mx.a2 * t^2 + mx.a1 * t + mx.a0

syms b3 b2 b1 b0
y(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0
yd(t) = diff(y(t), t)
ey = [
    y(t0) == py(1), ...
    y(t1) == py(2), ...
    yd(t0) == vy(1), ...
    yd(t1) == vy(2)
]

my = solve( ey, [b3 b2 b1 b0] )
my.b3

%cy(t) = my.b3 * t^3 + my.b2 * t^2 + my.b1 * t + my.b0
cy(t) = subs(y, [b3, b2, b1, b0], [my.b3, my.b2, my.b1, my.b0])

%fplot(cx, cy, [0 1])
fplot(cx, cy, [t0 t1])







