if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-32";
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

size(8cm, 0);
int n = 10;
real a = 360 / n;
path p = ellipse((dir(2*a)+dir(3*a)) / 2, 0.5, 0.3);
int s[] = {5, 1, 4, 3, 4, 3, 1, 5, 2, 2};
int x[] = {0, 1, 0, 1, 1, 0, 0, 1, 0, 1};
for(int i = 0; i < 5; ++ i) draw(rotate(2*i*a)*p);
for(int i = 0; i < 10; ++ i){
if(x[i]==1) fill(circle(dir(i*a), 0.15), red);
else fill(circle(dir(i*a), 0.15), cyan);
dot((string)s[i], dir(i*a), dir(i*a));
}
draw(dir(0)--dir(7*a));
draw(dir(a)--dir(6*a));
draw(dir(2*a)--dir(4*a));
draw(dir(3*a)--dir(5*a));
draw(dir(8*a)--dir(9*a));
