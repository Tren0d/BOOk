if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-10";
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

size(15cm);
pair x = (0, 0);
path p = (0, 0)--(2, 0)--(2, 1)--(1, 1)--(1, 2)--(0, 2)--cycle;
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path sq = shift(x)*shift(i,j)*unitsquare;
filldraw(sq, col2[0]);
}
}
x+=(4,0);
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path sq = shift(x)*shift(i,j)*unitsquare;
if((i,j)==(0,0)||i==2) filldraw(sq, col2[0]);
else filldraw(sq, col2[1]);
}
}
x+=(4,0);
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path sq = shift(x)*shift(i,j)*unitsquare;
if(i==j) filldraw(sq, col2[1]);
else filldraw(sq, col2[0]);
}
}
x+=(4,0);
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path sq = shift(x)*shift(i,j)*unitsquare;
if(j==1) filldraw(sq, col2[0]);
else filldraw(sq, col2[1]);
}
}
label((3.5, 1), "$\Rightarrow$");
label((7.5, 1), "$\Rightarrow$");
label((11.5, 1), "$\Rightarrow$");

ddraw(p, 2, 2, 180);
ddraw(p, 4, 0);
ddraw(p, 9, 0);
