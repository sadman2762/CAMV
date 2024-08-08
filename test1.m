px = [2, 8];
py = [2, 1];
vx = [1, 2];
vy = [3, -3];

plot(px, py, '*');
axis equal;
axis([0 14 -4 10]);
hold on;

quiver(px(1), py(1), vx(1), vy(1));
quiver(px(2), py(2), vx(2), vy(2));

syms a3_1 a2_1 a1_1 a0_1 t
t0 = -1; t1 = 1;
x1(t) = a3_1*t^3 + a2_1*t^2 + a1_1*t + a0_1;
xd1(t) = diff(x1(t), t);
ex1 = [
    x1(t0) == px(1),...
    x1(t1) == px(2),...
    xd1(t0) == vx(1),...
    xd1(t1) == vx(2)
];

mx1 = solve(ex1, [a3_1 a2_1 a1_1 a0_1]);
cx1(t) = mx1.a3_1*t^3 + mx1.a2_1*t^2 + mx1.a1_1*t + mx1.a0_1;

syms b3_1 b2_1 b1_1 b0_1
y1(t) = b3_1*t^3 + b2_1*t^2 + b1_1*t + b0_1;
yd1(t) = diff(y1(t), t);
ey1 = [
    y1(t0) == py(1),...
    y1(t1) == py(2),...
    yd1(t0) == vy(1),...
    yd1(t1) == vy(2)
];

my1 = solve(ey1, [b3_1 b2_1 b1_1 b0_1]);
cy1(t) = my1.b3_1*t^3 + my1.b2_1*t^2 + my1.b1_1*t + my1.b0_1;

fplot(cx1(t), cy1(t), [t0, t1]);

px2 = [px(2), 12];
py2 = [py(2), 4];
vx2 = [0];
vy2 = [8];

plot(px2, py2, '*');
quiver(px2(2), py2(2), vx2(1), vy2(1));

syms a3_2 a2_2 a1_2 a0_2
x2(t) = a3_2*t^3 + a2_2*t^2 + a1_2*t + a0_2;
xd2(t) = diff(x2(t), t);
ex2 = [
    x2(t0) == px2(1),...
    x2(t1) == px2(2),...
    xd2(t0) == vx(2),...
    xd2(t1) == vx2(1)
];

mx2 = solve(ex2, [a3_2 a2_2 a1_2 a0_2]);
cx2(t) = mx2.a3_2*t^3 + mx2.a2_2*t^2 + mx2.a1_2*t + mx2.a0_2;

syms b3_2 b2_2 b1_2 b0_2
y2(t) = b3_2*t^3 + b2_2*t^2 + b1_2*t + b0_2;
yd2(t) = diff(y2(t), t);
ey2 = [
    y2(t0) == py2(1),...
    y2(t1) == py2(2),...
    yd2(t0) == vy(2),...
    yd2(t1) == vy2(1)
];

my2 = solve(ey2, [b3_2 b2_2 b1_2 b0_2]);
cy2(t) = my2.b3_2*t^3 + my2.b2_2*t^2 + my2.b1_2*t + my2.b0_2;

fplot(cx2(t), cy2(t), [t0, t1]);
