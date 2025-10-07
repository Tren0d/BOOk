if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-18";
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
path p = (0,0)--(2,0)--(2,1)--(0,1)--cycle;
path[] q = (0,0)--(0,-1)--(2,-1)--(2,0)--(3,0)--(3,1)--(2,1)--(2,2)--(0,2)--(0,1)--(-1,1)--(-1,0)--cycle^^(1,-1)--(1,2);
draw(q);
ddraw(p);
