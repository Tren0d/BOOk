if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-21";
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

int n = 6;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path sq = shift(i,j)*unitsquare;
if(abs(2.5 - i) + abs(2.5 - j) == 2 && i != j && i + j != 5) filldraw(sq, col2[1]);
else filldraw(sq, col2[0]);
}
}
