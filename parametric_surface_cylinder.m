syms u v
sx(u,v)=cos(u);
sy(u,v)=sin(u);
sz(u,v)=v;
fsurf(sx,sy,sz,[0 2*pi 0 2])
axis equal