if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-11";
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
if((i - j) % 4 == 0) fill(p, hsv(180, 1, 1));
else fill(p, hsv(0, 1, 1));
}
}
++n;
for(int i=0; i<n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
path p = (1, 1)--(3, 1)--(3, 2)--(4, 2)--(4, 3)--(2, 3)--(2, 2)--(1, 2)--cycle;
ddraw(p);
ddraw(p, -1, 3);
p = (0, 0)--(1, 0)--(1, 1)--(2, 1)--(2, 3)--(1, 3)--(1, 2)--(0, 2)--cycle;
ddraw(p, 8, 0, 90);
ddraw(p, 8, 6, 90);
