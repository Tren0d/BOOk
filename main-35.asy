if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-35";
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

size(6cm);
pair X = dir(240); pair Y = dir(0);
path c = scale(0.5)*unitcircle;
int[] t = {0,0,2,2,3,0};
for (int i=0; i<=5; ++i) {
for (int j=0; j<=i; ++j) {
filldraw(shift(i*X+j*Y)*c, (t[i]==j) ? lightred : white);
draw(shift(i*X+j*Y)*c);
}
}
draw((0,0)--(X+Y)--(2*X+Y)--(3*X+2*Y)--(4*X+2*Y)-- (5*X+2*Y),linewidth(1.5));
path q = (3,-3sqrt(3))--(-3,-3sqrt(3));
draw(q,Arrows(TeXHead, 1));
label("$n = 6$", q, S);
