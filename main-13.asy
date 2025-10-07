if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-13";
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
}
}
label((0.5,4.5), "$\star$");
label((0.5,1.5), "$\star$");
label((2.5,0.5), "$\star$");
label((2.5,2.5), "$\star$");
label((3.5,4.5), "$\star$");
label((3.5,1.5), "$\star$");
label((4.5,0.5), "$\star$");
label((4.5,2.5), "$\star$");
label((5.5,2.5), "$\Rightarrow$");
//path p2 = (0,0)--(2,0)--(2,1)--(1,1)--(1,2)--(0,2)--cycle;
//path p3 = (0,0)--(3,0)--(3,1)--(2,1)--(2,2)--(1,2)--(1,1)--(0,1)--cycle;
//path p4 = (0,1)--(1,1)--(1,0)--(2,0)--(2,1)--(3,1)--(3,2)--(2,2)--(2,3)--(1,3)--(1,2)--(0,2)--cycle;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path sq = shift(6, 0)*shift(i,j)*unitsquare;
if((i,j)==(1,3)) filldraw(sq, col2[0]);
else filldraw(sq, col2[1]);
}
}
