% We have 4 control points for the Bézier curve
% P0(2,2), P1(4,5), P2(9,4), P3(8,1)

px = [2,4,9,8];
py = [2,5,4,1];
plot(px,py,'ro--');
axis([1 10 0 6])
axis equal
hold on
syms t
n = 3;

cx(t) = 0*t; cy(t) = 0*t;

for i = 0 : n
    cx(t) = cx(t) + nchoosek(n, i) * t^i * (1 - t)^(n-i) * px(i+1);
    cy(t) = cy(t) + nchoosek(n, i) * t^i * (1 - t)^(n-i) * py(i+1);
end

fplot(cx, cy, [0 1], 'r', 'LineWidth', 2)



