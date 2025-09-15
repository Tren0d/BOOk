if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-13";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

void ddraw(path p, real x=0, real y=0, real r=0){
draw(shift(x, y)*rotate(r)*p, linewidth(3.5)+white+miterjoin);
draw(shift(x, y)*rotate(r)*p, linewidth(1.5)+miterjoin);
}
void dddraw(path p, real x=0, real y=0, real r=0){
draw(shift(x+14, y+1)*rotate(r)*p, linewidth(3.5)+white+miterjoin);
draw(shift(x+14, y+1)*rotate(r)*p, linewidth(1.5)+miterjoin);
}
size(14cm);
int n = 12;
for(int i=0; i<=n; ++i){
draw((i, 0)--(i, n)^^(0, i)--(n, i));
}
path p = (4, 4)--(8, 4)--(8, 8)--(4, 8)--cycle;
draw(p, linewidth(4.5)+hsv(0, 1, 1)+miterjoin);

p = (2, 2)--(10, 2)--(10, 10)--(2, 10)--cycle;
draw(p, linewidth(4.5)+hsv(120, 1, 1)+miterjoin);

p = (0, 0)--(12, 0)--(12, 12)--(0, 12)--cycle;
draw(p, linewidth(4.5)+hsv(240, 1, 1)+miterjoin);

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
draw(shift(14, 1)*p, linewidth(4.5)+hsv(0, 1, 1)+miterjoin);

p = (2, 2)--(8, 2)--(8, 8)--(2, 8)--cycle;
draw(shift(14, 1)*p, linewidth(4.5)+hsv(120, 1, 1)+miterjoin);

p = (0, 0)--(10, 0)--(10, 10)--(0, 10)--cycle;
draw(shift(14, 1)*p, linewidth(4.5)+hsv(240, 1, 1)+miterjoin);

p = (0, 0)--(2, 0)--(2, 1)--(0, 1)--cycle;
dddraw(p, 1, 5, 90);
dddraw(p, 1, 1, 90);
dddraw(p, 10, 5, 90);
dddraw(p, 10, 1, 90);
dddraw(p, 0, 9);
dddraw(p, 4, 9);
dddraw(p, 8, 9);
dddraw(p, 2, 0);
dddraw(p, 6, 0);

dddraw(p, 3, 3, 90);
dddraw(p, 8, 3, 90);
dddraw(p, 2, 7);
dddraw(p, 6, 7);
dddraw(p, 4, 2);

dddraw(p, 4, 5);
label(shift(14, 1)*(5, -1), "for odd $n$");
