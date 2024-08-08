%%
% Connecting 2 curves with 2 control points and 2 tangents with C1
% continuity
px = [2, 8];
py = [2, 1];
vx = [1, 2];
vy = [3, -3];

plot(px, py, '*')
axis equal
axis([0 14 -4 8])
hold on
quiver(px(1), py(1), vx(1), vy(1));
quiver(px(2), py(2), vx(2), vy(2));

t0 = -1; t1 = 1; t2 = 2; t3 = 4;

% First curve
syms a3 a2 a1 a0 t
x(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
xd(t) = diff(x(t), t);

ex = [
    x(t0) == px(1), ...
    x(t1) == px(2), ...
    xd(t0) == vx(1), ...
    xd(t1) == vx(2)
];

mx = solve(ex, [a3 a2 a1 a0]);
cx(t) = mx.a3 * t^3 + mx.a2 * t^2 + mx.a1 * t + mx.a0;

syms b3 b2 b1 b0
y(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0;
yd(t) = diff(y(t), t);

ey = [
    y(t0) == py(1), ...
    y(t1) == py(2), ...
    yd(t0) == vy(1), ...
    yd(t1) == vy(2)
];

my = solve(ey, [b3 b2 b1 b0]);
cy(t) = my.b3 * t^3 + my.b2 * t^2 + my.b1 * t + my.b0;

fplot(cx(t), cy(t), [t0, t1])

% Second curve
% Control points: first control point has to be the same as the endpoint of the first
% curve
px2 = [px(2), 12]; 
py2 = [py(2), 4];
% Tangent at the endpoint of the curve
vx2 = [0];
vy2 = [8];

plot(px2, py2, '*')
quiver(px2(2), py2(2), vx2(1), vy2(1));
syms a3 a2 a1 a0 b3 b2 b1 b0

cx(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cy(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0;
cxd(t) = diff(cx(t), t);
cyd(t) = diff(cy(t), t);

% tangent at the starting point of the second curve is the same as the tangent at 
% the endpoint of the first curve
% tangent at the endpoint of the second curve is chosen arbitrarily
ex2 = [
    cx(t0) == px2(1), ...
    cx(t1) == px2(2), ...
    cxd(t0) == vx(2), ...
    cxd(t1) == vx2(1)
];

ey2 = [
    cy(t0) == py2(1), ...
    cy(t1) == py2(2), ...
    cyd(t0) == vy(2), ...
    cyd(t1) == vy2(1)
];

mx2 = solve(ex2, [a3 a2 a1 a0]);
my2 = solve(ey2, [b3 b2 b1 b0]);

cx_(t) = mx2.a3 * t^3 + mx2.a2 * t^2 + mx2.a1 * t + mx2.a0;
cy_(t) = my2.b3 * t^3 + my2.b2 * t^2 + my2.b1 * t + my2.b0;

fplot(cx_(t), cy_(t), [t0, t1])
%%
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
%%
px = [2, 8];
py = [2, 1];
vx = [1, 2];
vy = [3, -3];

figure

plot(px, py, '*')
axis equal
hold on
quiver(px(1), py(1), vx(1), vy(1), 'r', 'LineWidth', 2);
quiver(px(2), py(2), vx(2), vy(2), 'r', 'LineWidth', 2);

t0 = -1; t1 = 1; t2 = 2; t3 = 4;

syms a3 a2 a1 a0 t
x(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
xd(t) = diff(x(t), t);

ex = [
    x(t0) == px(1), ...
    x(t1) == px(2), ...
    xd(t0) == vx(1), ...
    xd(t1) == vx(2)
];

mx = solve(ex, [a3 a2 a1 a0]);
cx(t) = mx.a3 * t^3 + mx.a2 * t^2 + mx.a1 * t + mx.a0;

syms b3 b2 b1 b0
y(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0;
yd(t) = diff(y(t), t);

ey = [
    y(t0) == py(1), ...
    y(t1) == py(2), ...
    yd(t0) == vy(1), ...
    yd(t1) == vy(2)
];

my = solve(ey, [b3 b2 b1 b0]);
cy(t) = my.b3 * t^3 + my.b2 * t^2 + my.b1 * t + my.b0;

fplot(cx(t), cy(t), [t0, t1])

% points of the second curve
px2 = [px(2), 12]; 
py2 = [py(2), 4];
vx2 = [0];
vy2 = [8];

plot(px2, py2, '*')
syms a3 a2 a1 a0 b3 b2 b1 b0

cx(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cy(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0;
cxd(t) = diff(cx(t), t);
cyd(t) = diff(cy(t), t);

ex2 = [
    cx(t0) == px2(1), ...
    cx(t1) == px2(2), ...
    % The G1 continuity is realized here: the tangent of the second curve
    % is twice the tangent of the first curve
    cxd(t0) == vx(2)*2, ...
    cxd(t1) == vx2(1)
];

ey2 = [
    cy(t0) == py2(1), ...
    cy(t1) == py2(2), ...
    % The G1 continuity is realized here: the tangent of the second curve
    % is twice the tangent of the first curve
    cyd(t0) == vy(2)*2, ...
    cyd(t1) == vy2(1)
];

% Plot the two tangents for the second curve
quiver(px2(1), py2(1), vx(2)*2, vy(2)*2, 'b');
quiver(px2(2), py2(2), vx2(1), vy2(1));

mx2 = solve(ex2, [a3 a2 a1 a0]);
my2 = solve(ey2, [b3 b2 b1 b0]);

cx2(t) = mx2.a3 * t^3 + mx2.a2 * t^2 + mx2.a1 * t + mx2.a0;
cy2(t) = my2.b3 * t^3 + my2.b2 * t^2 + my2.b1 * t + my2.b0;

fplot(cx2(t), cy2(t), [t0, t1])
