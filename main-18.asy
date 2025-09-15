if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-18";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm);
int n = 5, m = 4;
for(int i=0; i<n; ++i){
for(int j=0; j<m; ++j){
path p = (i,j)--(i+0.5,j+0.5)--(i,j+1)--cycle;
fill(p, hsv(180, 1, 1));
if(i==n-1) fill(shift(1, 1)*rotate(180, (i, j))*p, hsv(180, 1, 1));
draw((i, j)--(i+1, j+1)^^(i+1, j)--(i, j+1));
}
}
for(int i=0; i<=n; ++i) draw((i, 0)--(i, m));
for(int i=0; i<=m; ++i) draw((0, i)--(n, i));
