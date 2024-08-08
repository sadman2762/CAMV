px = [2,8];
py = [2,1];
vx = [1,2];
vy = [3,-3];

plot(px,py,'*');
axis equal
hold on
quiver(px(1),py(1),vx(1),vy(1));
quiver(px(2),py(2),vx(2),vy(2));

syms a3 a2 a1 a0 t
t0 = -1; t1 = 1;
x(t) = a3*t^3 + a2*t^2 + a1*t + a0;
xd(t) = diff(x(t),t);
ex = [
    x(t0) == px(1),...
    x(t1) == px(2),...
    xd(t0) == vx(1),...
    xd(t1) == vx(2)
    ];
mx = solve(ex,[a3 a2 a1 a0]);
cx(t) = mx.a3*t^3 + mx.a2*t^2 +mx.a1*t + mx.a0;
syms b3 b2 b1 b0
y(t) = b3*t^3 + b2*t^2 +b1*t +b0;
yd(t) = diff(y(t),t);
ey =[
    y(t0) == py(1),...
    y(t1) == py(2),...
    yd(t0) == vy(1),...
    yd(t1) == vy(2)
    ];
my = solve(ey,[b3 b2 b1 b0]);
cy(t) = my.b3*t^3 + my.b2*t^2 + my.b1*t + my.b0;
fplot(cx(t),cy(t),[t0, t1]);
px2 = [px(2),12];
py2 = [py(2),4];
vx2 = [0];
vy2 = [8];
plot(px2,py2,'*');
axis equal
hold on
quiver(px2(2),py2(2),vx2(1),vy2(1));
quiver(px2(1),py2(1),vx(2)*2,vy(2)*2,'b')

syms c3 c2 c1 c0
x2(t) = c3*t^3 + c2*t^2 + c1*t +c0;
xd2(t) = diff(x2(t),t);
ex2 = [
    x2(t0) == px2(1),...
    x2(t1) == px2(2),...
    xd2(t0) == vx(2)*2,...
    xd2(t1) == vx2(1)
    ];
mx2 = solve(ex2,[c3 c2 c1 c0]);
cx2(t) = mx2.c3*t^3 + mx2.c2*t^2 + mx2.c1*t + mx2.c0;
syms d3 d2 d1 d0
y2(t) = d3*t^3 + d2*t^2 + d1*t + d0;
yd2(t) = diff(y2(t), t);
ey2 = [
    y2(t0) == py2(1),...
    y2(t1) == py2(2),...
    yd2(t0) == vy(2)*2,...
    yd2(t1) == vy2(1)
    ];
my2 =solve(ey2, [d3 d2 d1 d0]);
cy2(t) = my2.d3*t^3 + my2.d2*t^2 + my2.d1*t + my2.d0;
fplot(cx2(t),cy2(t),[t0 ,t1])

