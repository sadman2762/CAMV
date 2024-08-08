%Let us define the points P1 = (−2, −2), P2 = (4, 0), P3 = (6, −2), P4 = (10, 2). Draw the
%Hermite arc that goes through these points at the parameter values (t0, t1, t2, t3) −1, 0, 2, 3
%respectively. Draw the tangent vector of the curve when t = 2.
px = [-2, 4, 6, 10];
py = [-2, 0, -2, 2];
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
quiver(px(3),py(3),cx1(t2),cy1(t2));