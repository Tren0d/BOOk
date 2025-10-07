if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-27";
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

for(int i=0; i<2; ++i){
for(int j=0; j<2; ++j){
path sq = shift(i,j)*unitsquare;
draw(sq);
}
}
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path sq = shift(3, 0)*shift(i,j)*unitsquare;
if((j==0&&i!=2)||(j==1&&i!=0)) draw(sq);
}
}
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path sq = shift(7, 0)*shift(i,j)*unitsquare;
if(j==0||(j==1&&i!=2)) draw(sq);
}
}
