if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-12";
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
size(8cm);
int n = 8;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
if(min(i, j) == 0 || max(i, j) == 7 || (min(i, j) == 2 && 1 < max(i, j) && max(i, j) < 6) || (max(i, j) == 5 && 1 < min(i, j) && min(i, j) < 6)) fill(p, hsv(348, 0.91, 0.90));
else fill(p, rgb(0.08, 0.27, 0.67));
}
}
for(int i=0; i<=n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
path p = (0, 0)--(2, 0)--(2, 1)--(0, 1)--cycle;
ddraw(p, 0, 4);
ddraw(p, 5, 2);
ddraw(p, 3, 0, 90);
ddraw(p, 7, 6, 90);
