if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-21";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm, 0);
int n = 7;
real a = 360/n;
for(int i = 0; i < n; ++ i){
draw((0, 0)--dir(i*a));
}
label("1st color", dir(a), dir(a), hsv(a, 1, 1));
label("2nd color", dir(0), dir(0), hsv(0, 1, 1));
label("3rd color", dir(-a), dir(-a), hsv(-a, 1, 1));
label("4th color", dir(-2*a), dir(-2*a), hsv(-2*a, 1, 1));
label("\dots", dir(-3*a), dir(-3*a), hsv(-3*a, 1, 1));
label("\dots", dir(3*a), dir(3*a), hsv(3*a, 1, 1));
label("$\leq a$-th color", dir(2*a), dir(2*a), hsv(2*a, 1, 1));
