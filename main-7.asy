if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-7";
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
size(15cm);
pair x = (0, 0);

path p1 = (0, 0)--(2, 0)--(2, 1)--(1, 1)--(1, 2)--(0, 2)--cycle;
path p2 = (0, 0)--(-2, 0)--(-2, -1)--(-1, -1)--(-1, -2)--(-0, -2)--cycle;

fill((0, 0)--(3, 0)--(3, 2)--(0, 2)--cycle, hsv(0, 1, 1));

fill((4, 0)--(5, 0)--(5, 1)--(4, 1)--cycle^^(6, 0)--(7, 0)--(7, 2)--(6, 2)--cycle, hsv(0, 1, 1));
fill(shift(6, 2)*p2, hsv(180, 1, 1));

fill((8, 1)--(9, 1)--(9, 2)--(8, 2)--cycle^^shift(11, 0)*rotate(90)*p1, hsv(0, 1, 1));
fill((8, 0)--(9, 0)--(9, 1)--(8, 1)--cycle^^(9, 1)--(10, 1)--(10, 2)--(9, 2)--cycle, hsv(180, 1, 1));

fill((12, 1)--(15, 1)--(15, 2)--(12, 2)--cycle, hsv(0, 1, 1));
fill((12, 0)--(15, 0)--(15, 1)--(12, 1)--cycle, hsv(180, 1, 1));

for(int i=0; i<3; ++i) draw((x + (0, i))--(x + (3, i)));
for(int i=0; i<4; ++i) draw((x + (i, 0))--(x + (i, 2)));
x += (4, 0);
for(int i=0; i<3; ++i) draw((x + (0, i))--(x + (3, i)));
for(int i=0; i<4; ++i) draw((x + (i, 0))--(x + (i, 2)));
x += (4, 0);
for(int i=0; i<3; ++i) draw((x + (0, i))--(x + (3, i)));
for(int i=0; i<4; ++i) draw((x + (i, 0))--(x + (i, 2)));
x += (4, 0);
for(int i=0; i<3; ++i) draw((x + (0, i))--(x + (3, i)));
for(int i=0; i<4; ++i) draw((x + (i, 0))--(x + (i, 2)));

label((3.5, 1), "$\Rightarrow$");
label((7.5, 1), "$\Rightarrow$");
label((11.5, 1), "$\Rightarrow$");

ddraw(p2, 2, 2);
ddraw(p1, 4, 0);
ddraw(p1, 9, 0);
