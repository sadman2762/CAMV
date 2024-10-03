% We have 4 points: P0(2,2), P1(4,5), P2(9,4), P3(8,1)
px = [2, 4, 9 ,8];
py = [2, 5, 4, 1];
plot(px, py, 'o')
axis equal
hold on
t0 = -1; t1 = 1; t2 = 2; t3 = 4;
syms a3 a2 a1 a0
ex = [
    a3 * t0^3 + a2 * t0^2 + a1 * t0 + a0 == px(1), ...
    a3 * t1^3 + a2 * t1^2 + a1 * t1 + a0 == px(2), ...
    a3 * t2^3 + a2 * t2^2 + a1 * t2 + a0 == px(3), ...
    a3 * t3^3 + a2 * t3^2 + a1 * t3 + a0 == px(4)
]

mx = solve( ex, [a3 a2 a1 a0] )
mx.a3
syms t
cx(t) = mx.a3 * t^3 + mx.a2 * t^2 + mx.a1 * t + mx.a0

syms b3 b2 b1 b0
ey = [
    b3 * t0^3 + b2 * t0^2 + b1 * t0 + b0 == py(1), ...
    b3 * t1^3 + b2 * t1^2 + b1 * t1 + b0 == py(2), ...
    b3 * t2^3 + b2 * t2^2 + b1 * t2 + b0 == py(3), ...
    b3 * t3^3 + b2 * t3^2 + b1 * t3 + b0 == py(4)
]

my = solve( ey, [b3 b2 b1 b0] )
my.b3

cy(t) = my.b3 * t^3 + my.b2 * t^2 + my.b1 * t + my.b0

fplot(cx, cy, [-1 4])





