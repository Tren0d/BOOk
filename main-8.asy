if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-8";
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

path p = (0, 0)--(2, 0)--(2, 1)--(1, 1)--(1, 2)--(0, 2)--cycle;
fill(unitsquare, col3[0]);
fill(shift(0,1)*unitsquare, col3[1]);
fill(shift(1,0)*unitsquare, col3[2]);
ddraw(p);
label("$\Rightarrow$", (2.5,1));
filldraw(shift(3,0)*unitsquare, col3[0]);
filldraw(shift(3,0)*shift(0,1)*unitsquare, col3[1]);
filldraw(shift(3,0)*shift(1,0)*unitsquare, col3[2]);
filldraw(shift(3,0)*shift(1,1)*unitsquare, col3[0]);
ddraw(p, 5, 2, 180);
label("$\Rightarrow$", shift(3,0)*(2.5,1));
filldraw(shift(6,0)*unitsquare, col3[0]);
filldraw(shift(6,0)*shift(0,1)*unitsquare, col3[1]);
filldraw(shift(6,0)*shift(1,0)*unitsquare, col3[2]);
filldraw(shift(6,0)*shift(1,1)*unitsquare, col3[0]);
filldraw(shift(6,0)*shift(2,0)*unitsquare, col3[1]);
ddraw(shift(7,0)*p);
