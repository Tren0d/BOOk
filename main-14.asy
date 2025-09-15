if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-14";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm);
int n = 6;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
if(abs(2.5 - i) + abs(2.5 - j) == 2 && i != j && i + j != 5) fill(p, hsv(180, 1, 1));
else fill(p, hsv(0, 1, 1));
}
}
for(int i=0; i<=n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
