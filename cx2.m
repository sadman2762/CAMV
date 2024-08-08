px = [20,25,30,40,50,55];
py = [6,1,-5,5,-10,0];
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
    cy(t) = cy(t) + py(i+1) *weight;
end
fplot(cx(t),cy(t),[0 1])