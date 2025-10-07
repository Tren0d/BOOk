if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-25";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

defaultpen(fontsize(10pt));
size(8cm);
void ddraw(path p, real x=0, real y=0, real r=0){
draw(shift(x, y)*rotate(r)*p, linewidth(3.5)+white+miterjoin);
draw(shift(x, y)*rotate(r)*p, linewidth(1.5)+miterjoin);
}
pen[] col2 = {red, cyan};
pen[] col3 = {red, green, blue};
pen[] col4 = {red, yellow, cyan, purple};

int n = 5, m = 4;
fill((0,0)--(n,0)--(n,m)--(0,m)--cycle, col2[0]);
for(int i=0; i<n; ++i){
for(int j=0; j<m; ++j){
path p = (i,j)--(i+0.5,j+0.5)--(i,j+1)--cycle;
fill(p, col2[1]);
if(i==n-1) fill(shift(1, 1)*rotate(180, (i, j))*p, col2[1]);
draw((i, j)--(i+1, j+1)^^(i+1, j)--(i, j+1));
}
}
for(int i=0; i<=n; ++i) draw((i, 0)--(i, m));
for(int i=0; i<=m; ++i) draw((0, i)--(n, i));
