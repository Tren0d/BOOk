if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-12";
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

size(12cm);
int n = 5;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
int c = 0;
path sq = shift(i,j)*unitsquare;
if(j % 2 == 0 && i != 2){
c = 1;
label((i + 0.5, j + 0.5), "$\star$");
}
filldraw(sq, col2[c]);
}
}
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
int c = 0;
path sq = shift(6,0)*shift(i,j)*unitsquare;
if(abs(2 - i) <= 1 && abs(2 - j) <= 1 && (i + j) % 2 == 0){
c = 1;
label(shift(6, 0)*(i + 0.5, j + 0.5), "$\star$");
}
filldraw(sq, col2[c]);
}
}
