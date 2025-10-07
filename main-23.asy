if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-23";
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

void ddraw(path p, real x=0, real y=0, real r=0){
draw(shift(x, y)*rotate(r)*p, linewidth(2.5)+col3[1]);
}
int n = 11;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path sq = shift(i,j)*unitsquare;
if(i % 2 == 1 && j % 2 == 1) filldraw(sq, col3[2]);
else filldraw(sq, col3[0]);
}
}
for(int i=0; i<=n-2; i+=4){
for(int j=0; j<=n-2; ++j){
ddraw((i, j)--(i+1, j+1), 0.5, 0.5);
if(j != n-2) ddraw((i+1, j+1)--(i, j+1), 0.5, 0.5);
else ddraw((i+1, j+1)--(i, j+1), 1.5, 0.5);
if(i != n-3) ddraw((i+2, j+1)--(i+3, j), 0.5, 0.5);
if(i != n-3){
if(j != 0) ddraw((i+3, j)--(i+2, j), 0.5, 0.5);
else ddraw((i+3, j)--(i+2, j), 1.5, 0.5);
}
}
}
