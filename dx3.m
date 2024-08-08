px = [19,21,30,40,45,55];
py = [ 3, 2, 0,10,-10,0];
plot(px,py,'o--');
axis equal
hold on
syms t
n = 5;
cx(t) = 0*t;
cy(t) = 0*t;
for i = 0:n
    weight = nchoosek(n,i)*t^i*(1-t)^(n-i);
    cx(t) = cx(t) + px(i+1)*weight;
    cy(t) = cy(t) + py(i+1)*weight;
end
fplot(cx(t),cy(t),[0 1]);
v1x =n*(px(2)-px(1));
v1y = n*(py(2) - py(1));
quiver(px(1),py(1),v1x,v1y);
v2x = n*(px(6)-px(5));
v2y = n*(py(6)-py(5));
quiver(px(6),py(6),v2x,v2y);

