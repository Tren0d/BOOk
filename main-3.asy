if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-3";
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
int k = 4, n = 10;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
int c = (i + j) % k;
filldraw(p, hsv(360 / k * c, 1, 1));
}
}
ddraw((1, 1)--(1, 5)--(2, 5)--(2, 1)--cycle);
ddraw((4, 4)--(4, 5)--(8, 5)--(8, 4)--cycle);
