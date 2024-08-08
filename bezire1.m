px = [2, 4, 9, 8];
py = [2, 5, 4, 1];
plot(px,py,'o--');
axis equal;
hold on
syms t;
n = 3;
cx(t) = 0*t;
cy(t) = 0*t;
for i = 0:n
    weight = nchoosek(n,i)*t^i *(1 - t)^(n - i);
    cx(t) = cx(t) + px(i + 1)*weight;
    cy(t) = cy(t) + py(i + 1)*weight;
end
fplot(cx(t),cy(t),[0 1],'r','LineWidth',2)
v1x = n*(px(2) - px(1));
v1y = n*(py(2) - py(1));
quiver(px(1),py(1),v1x,v1y);
v2x = n*(px(4) - px(3));
v2y = n*(py(4) - py(3));
quiver(px(4),py(4),v2x,v2y);

t0 = 0; t1 = 1;
hpx = [px(4),14];
hpy = [py(4),5];
vx = [0];
vy = [10];
%plot(hpx,hpy,'bo');


syms a3 a2 a1 a0 b3 b2 b1 b0
cx(t) = a3*t^3 + a2*t^2 + a1*t + a0;
cy(t) = b3*t^3 + b2*t^2 + b1*t + b0;
cxd(t) = diff(cx(t),t);
cyd(t) = diff(cy(t),t);

ex = [
    cx(t0) == hpx(1),...
    cx(t1) == hpx(2),...
    cxd(t0) == v2x,...
    cxd(t1) == vx(1)
    ];
ey = [
    cy(t0) == hpy(1),...
    cy(t1) == hpy(2),...
    cyd(t0) == v2y,...
    cyd(t1) == vy(1)
    ];
mx = solve(ex,[a3 a2 a1 a0]);
my = solve(ey,[b3 b2 b1 b0]);
cx(t) = mx.a3*t^3 + mx.a2*t^2 + mx.a1*t + mx.a0;
cy(t) = my.b3*t^3 + my.b2*t^2 + my.b1*t + my.b0;
%fplot(cx(t),cy(t),[t0,t1])
px2 = [px(4), 0, 16, 20];
py2 = [py(4), 0, 8, 4];
px2(2) = px(4) + v2x/n;
py2(2) = py(4) + v2y/n;
plot(px2,py2,'bo--');
dx(t) = 0*t; dy(t) = 0*t;
for i = 0:n
    bint = nchoosek(n,i)*t^i*(1-t)^(n - i);
    dx(t) = dx(t) + px2(i + 1) * bint;
    dy(t) = dy(t) + py2(i + 1) * bint;
end
fplot(dx(t),dy(t),[t0, t1])