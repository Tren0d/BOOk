if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-8";
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
size(6cm, 0);
int n = 9;
fill((2, 0)--(2, 3)--(3, 3)--(3, 0)--cycle, hsv(0, 1, 1));
fill((3, 5)--(3, 6)--(6, 6)--(6, 5)--cycle, hsv(180, 1, 1));
for(int i=0; i<=n; ++i){
if(i % 3 == 0) draw((i, 0)--(i, n)^^(0, i)--(n, i));
else draw((i, 0)--(i, n)^^(0, i)--(n, i), dashed);
}
ddraw((2, 0)--(2, 5)--(4, 5)--(4, 0)--cycle);
ddraw((2, 5)--(2, 7)--(7, 7)--(7, 5)--cycle);
