if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-16";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

void ddraw(path p, real x=0, real y=0, real r=0){
draw(shift(x, y)*rotate(r)*p, linewidth(2.5)+yellow);
}
size(8cm);
int n = 11;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
if(i % 2 == 1 && j % 2 == 1) fill(p, hsv(180, 1, 1));
else fill(p, hsv(0, 1, 1));
}
}
for(int i=0; i<=n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
for(int i=0; i<=n-2; i+=4){
for(int j=0; j<=n-2; ++j){
ddraw((i, j)--(i+1, j+1), 0.5, 0.5);
if(j != n-2) ddraw((i+1, j+1)--(i, j+1), 0.5, 0.5);
else ddraw((i+1, j+1)--(i, j+1), 1.5, 0.5);
if(i != n-3) ddraw((i+2, j+1)--(i+3, j), 0.5, 0.5);
if(i != n-3){
if(j != 0) ddraw((i+3, j)--(i+2, j), 0.5, 0.5);
else ddraw((i+3, j)--(i+2, j), 1.5, 0.5);
}
}
}
