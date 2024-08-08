py = [-2, 0, -2, 2];
px = [-2, 4, 6, 10];
plot(px,py,'*');

axis equal;
hold on;
syms b3 b2 b1 b0 a3 a2 a1 a0 t
t0 = -1;t1 = 0; t2 = 1; t3 = 2;
x(t) = a3*t^3 + a2*t^2 + a1*t + a0;
y(t) = b3*t^3 + b2*t^2 + b1*t + b0;
xd(t) = diff(x(t),t);
yd(t) = diff(y(t),t);
ex = [
    x(t0) == px(1),...
    x(t1) == px(2),...
    x(t2) == px(3),...
    x(t3) == px(4)
    ];
ey = [
    y(t0) == py(1),...
    y(t1) == py(2),...
    y(t2) == py(3),...
    y(t3) == py(4)
    ];
mx = solve(ex,[a3 a2 a1 a0]);
my = solve(ey,[b3 b2 b1 b0]);
cx(t) = mx.a3*t^3 + mx.a2*t^2 + mx.a1*t + mx.a0;
cy(t) = my.b3*t^3 + my.b2*t^2 + my.b1*t + my.b0;
fplot(cx(t),cy(t),[t0 t3])
cx1(t) = diff(cx(t),t);
cy1(t) = diff(cy(t),t);
quiver(px(4),py(4),cx1(t3),cy1(t3));
px2 = [px(4),14];
py2 = [py(4),-4];
vx = [3];
vy = [0];
plot(px2,py2,'*');
axis equal
hold on
quiver(px2(2),py2(2),vx(1),vy(1),'r');
t0_ = -1; t1_ = 1;
syms d3 d2 d1 d0 c3 c2 c1 c0
x_(t) = c3*t^3 + c2*t^2 + c1*t + c0;
y_(t) = d3*t^3 + d2*t^2 + d1*t + d0;
xd_(t) = diff(x_(t),t);
yd_(t) = diff(y_(t),t);
ex_ = [
    x_(t0_) == px2(1),...
    x_(t1_) == px2(2),...
    xd_(t0_) == cx1(t3) ,...
    xd_(t1_) == vx(1)
    ];
ey_ = [
    y_(t0_) == py2(1),...
    y_(t1_) == py2(2),...
    yd_(t0_) == cy1(t3),...
    yd_(t1_) == vy(1)
    ];
mx2 = solve(ex_,[c3 c2 c1 c0]);
my2 = solve(ey_,[d3 d2 d1 d0]);
cx2(t) = mx2.c3*t^3 + mx2.c2*t^2 + mx2.c1*t + mx2.c0;
cy2(t) = my2.d3*t^3 + my2.d2*t^2 + my2.d1*t + my2.d0;
fplot(cx2(t),cy2(t),[t0_ t1_])
