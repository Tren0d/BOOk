if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(12cm, 0);
int n = 4;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
int c = (i + j) % 4;
filldraw(p, hsv(90 * c, 1, 1));
}
}
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
int c = (i + 2 * j) % 4;
filldraw(shift(5, 0)*p, hsv(90 * c, 1, 1));
}
}
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
int c = (i + 3 * j) % 4;
filldraw(shift(10, 0)*p, hsv(90 * c, 1, 1));
}
}
