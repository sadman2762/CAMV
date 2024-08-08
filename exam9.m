px = [ 10, 20, 40, 50, 20];
py = [20, 40, 40, 20, 21];
plot(px,py,'o--');
axis equal;
hold on;
syms t
n = 4;
cx(t) = 0*t;
cy(t) = 0*t;
for i = 0:n
    weight = nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t) = cx(t) + px(i+1)*weight;
    cy(t) = cy(t) + py(i + 1)*weight;
end
fplot(cx(t),cy(t),[0,1])
vx = n*(px(5)-px(4));
vy = n*(py(5)-py(4));
px2 = [px(5), 0, 20, 40,25,30];
py2 = [py(5), 0, 10, 20, 25,35];
m = 5;
px2(2) = px(5) + vx/n;
py2(2) = py(5) + vy/n;
plot(px2,py2,'o--');
cx2(t) = 0*t;
cy2(t) = 0*t;
for i = 0:m
    weight = nchoosek(m,i)*t^i*(1-t)^(m-i);
    cx2(t) = cx2(t) + px2(i+1)*weight;
    cy2(t) = cy2(t) + py2(i + 1)*weight;
end
fplot(cx2(t),cy2(t),[0 1])