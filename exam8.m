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