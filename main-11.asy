if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-11";
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
int n = 9;
fill((2, 0)--(2, 3)--(3, 3)--(3, 0)--cycle, col2[0]);
fill((3, 5)--(3, 6)--(6, 6)--(6, 5)--cycle, col2[1]);
for(int i=0; i<=n; ++i){
if(i % 3 == 0) draw((i, 0)--(i, n)^^(0, i)--(n, i));
else draw((i, 0)--(i, n)^^(0, i)--(n, i), dashed);
}
path p = (0,0)--(5,0)--(5,2)--(0,2)--cycle;
ddraw(p, 2, 5);
ddraw(p, 4, 0, 90);
