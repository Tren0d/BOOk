if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-6";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

void ddraw(path p, real x=0, real y=0, real r=0){
draw(shift(x, y)*rotate(r)*p, linewidth(3.5)+white+miterjoin);
draw(shift(x, y)*rotate(r)*p, linewidth(1.5)+miterjoin);
}
size(6cm, 0);
int k = 3, n = 6;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
int c = (i - j) % k;
fill(p, hsv(360 / k * c, 1, 1));
}
}
for(int i=0; i<=n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
ddraw((1, 1)--(3, 1)--(3, 2)--(2, 2)--(2, 3)--(1, 3)--cycle);
ddraw((4, 3)--(5, 3)--(5, 2)--(6, 2)--(6, 4)--(4, 4)--cycle);
