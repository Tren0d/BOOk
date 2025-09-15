if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-23";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

int n = 10;
void check(pair x){
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = shift(x)*((j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle);
if((i + j) % 2 == 0) fill(p, hsv(0, 1, 1));
else fill(p, hsv(180, 1, 1));
}
}
for(int i=0; i<=n; ++i) draw(shift(x)*((i, 0)--(i, n)^^(0, i)--(n, i)));
}
size(16cm, 0);
pair a[] = {(0, n+1), (n+1, n+1), (2*(n+1), n+1), (3*(n+1), n+1), (0, 0), (n+1, 0), (2*(n+1), 0), (3*(n+1), 0)};
for(int i=0; i<8; ++i){
check(a[i]);
real x=0, y=i%2;
for(int j=0; j<i; ++j){
path p[] = (0, 0)--(1, 1)^^(0, 1)--(1, 0);
draw(shift(a[i])*shift(x, y)*p);
y += 2;
if(y > 9){
y = (y+1)%2;
++x;
}
}
for(int j=0; j<6; ++j){
label("$\star$", shift(a[i])*(x+0.5, y+0.5));
y += 2;
if(y > 9){
y = (y+1)%2;
++x;
}
}
}
