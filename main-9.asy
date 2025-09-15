if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-9";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(12cm, 0);
int k = 2, n = 5;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
int c = 0;
path p = (i,j)--(i,j+1)--(i+1,j+1)--(i+1,j)--cycle;
if(j % 2 == 0 && i != 2)
{
c = 1;
label((i + 0.5, j + 0.5), "$\star$");
}
filldraw(p, hsv(360/k*c, 1, 1));
}
}
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
int c = 0;
path p = (i,j)--(i,j+1)--(i+1,j+1)--(i+1,j)--cycle;
if(abs(2 - i) <= 1 && abs(2 - j) <= 1 && (i + j) % 2 == 0)
{
c = 1;
label(shift(6, 0)*(i + 0.5, j + 0.5), "$\star$");
}
filldraw(shift(6, 0)*p, hsv(360/k*c, 1, 1));
}
}
