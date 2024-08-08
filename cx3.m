px = [25,16,70,80,55];
py = [20,60,55,20,10];
plot(px,py,'*');
axis equal
hold on
syms b4 b3 b2 b1 b0 a4 a3 a2 a1 a0 t
t0 = -1 ; t1 = 0; t2 = 1; t3 = 2; t4 = 2.7;
x(t) = b4*t^4 + b3*t^3 + b2*t^2 + b1*t + b0;
y(t) = a4*t^4 + a3*t^3 + a2*t^2 + a1*t + a0;
xd(t) = diff(x(t),t);
yd(t) = diff(y(t),t);
ex = [
    x(t0) == px(1),...
    x(t1) == px(2),...
    x(t2) == px(3),...
    x(t3) == px(4),...
    x(t4) == px(5)
    ];
ey = [
    y(t0) == py(1),...
    y(t1) == py(2),...
    y(t2) == py(3),...
    y(t3) == py(4),...
    y(t4) == py(5)
    ];
mx = solve(ex,[b4 b3 b2 b1 b0]);
my = solve(ey,[a4 a3 a2 a1 a0]);
cx(t) = mx.b4*t^4 + mx.b3*t^3 + mx.b2*t^2 + mx.b1*t + mx.b0;
cy(t) = my.a4*t^4 + my.a3*t^3 + my.a2*t^2 + my.a1*t + my.a0;
fplot(cx(t),cy(t),[t0 t4]);
cxd(t) = diff(cx(t),t);
cyd(t) = diff(cy(t),t);
quiver(px(5),py(5),cxd(t4),cyd(t4));

t_ = 1.75;
quiver(cx(t_),cy(t_),cxd(t_),cyd(t_));
plot(cx(t_),cy(t_),'o')