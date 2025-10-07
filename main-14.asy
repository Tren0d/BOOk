if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-14";
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
filldraw(shift(i,j)*unitsquare, col2[0]);
if((i+j)%2==0&&(i,j)!=(2,2)) label(shift(0.5,0.5)*(i,j), "$\star$");
}
}
label((5.5,2.5), "$\Rightarrow$");
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path sq = shift(6, 0)*shift(i,j)*unitsquare;
if((i,j)==(2,2)) filldraw(sq, col2[0]);
else filldraw(sq, col2[1]);
}
}
