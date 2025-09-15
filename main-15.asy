if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-15";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm);
int n = 10;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
if((max(abs(4.5 - i), abs(4.5 - j)) == 1.5 || max(abs(4.5 - i), abs(4.5 - j)) == 3.5) && i != j && i + j != 9) fill(p, hsv(180, 1, 1));
else fill(p, hsv(0, 1, 1));
}
}
for(int i=0; i<=n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
