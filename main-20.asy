if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-20";
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

size(14cm);
int n = 12;
for(int i=0; i<=n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
path p = (4, 4)--(8, 4)--(8, 8)--(4, 8)--cycle;
draw(p, linewidth(4.5)+col3[0]+miterjoin);

p = (2, 2)--(10, 2)--(10, 10)--(2, 10)--cycle;
draw(p, linewidth(4.5)+col3[1]+miterjoin);

p = (0, 0)--(12, 0)--(12, 12)--(0, 12)--cycle;
draw(p, linewidth(4.5)+col3[2]+miterjoin);

p = (0, 0)--(2, 0)--(2, 1)--(0, 1)--cycle;
ddraw(p, 1, 10, 90);
ddraw(p, 1, 6, 90);
ddraw(p, 1, 2, 90);
ddraw(p, 12, 10, 90);
ddraw(p, 12, 6, 90);
ddraw(p, 12, 2, 90);
ddraw(p, 3, 11);
ddraw(p, 7, 11);
ddraw(p, 1, 0);
ddraw(p, 5, 0);
ddraw(p, 9, 0);

ddraw(p, 3, 8, 90);
ddraw(p, 3, 4, 90);
ddraw(p, 10, 8, 90);
ddraw(p, 10, 4, 90);
ddraw(p, 5, 9);
ddraw(p, 3, 2);
ddraw(p, 7, 2);

ddraw(p, 5, 6, 90);
ddraw(p, 8, 6, 90);
ddraw(p, 5, 4);
label((6, -1), "for even $n$");

n = 10;
for(int i=0; i<=n; ++i){
draw((i+14, 1)--(i+14, n+1)^^(14, i+1)--(n+14, i+1));
}
p = (4, 4)--(6, 4)--(6, 6)--(4, 6)--cycle;
draw(shift(14, 1)*p, linewidth(4.5)+col3[0]+miterjoin);

p = (2, 2)--(8, 2)--(8, 8)--(2, 8)--cycle;
draw(shift(14, 1)*p, linewidth(4.5)+col3[1]+miterjoin);

p = (0, 0)--(10, 0)--(10, 10)--(0, 10)--cycle;
draw(shift(14, 1)*p, linewidth(4.5)+col3[2]+miterjoin);

p = (0, 0)--(2, 0)--(2, 1)--(0, 1)--cycle;
ddraw(p, 15, 6, 90);
ddraw(p, 15, 2, 90);
ddraw(p, 24, 6, 90);
ddraw(p, 24, 2, 90);
ddraw(p, 14, 10);
ddraw(p, 18, 10);
ddraw(p, 22, 10);
ddraw(p, 16, 1);
ddraw(p, 20, 1);

ddraw(p, 17, 4, 90);
ddraw(p, 22, 4, 90);
ddraw(p, 16, 8);
ddraw(p, 20, 8);
ddraw(p, 18, 3);

ddraw(p, 18, 6);
label(shift(14, 1)*(5, -1), "for odd $n$");
