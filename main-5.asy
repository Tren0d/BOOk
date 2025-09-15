if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-5";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(6cm, 0);
int k = 2, n = 10;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
int c = i % 2;
filldraw(p, hsv(360/k*c, 1, 1));
}
}
draw((1, 1)--(3, 1)--(3, 2)--(2, 2)--(2, 4)--(1, 4)--cycle, linewidth(3.5)+white);
draw((1, 1)--(3, 1)--(3, 2)--(2, 2)--(2, 4)--(1, 4)--cycle, linewidth(1.5));
draw((5, 3)--(6, 3)--(6, 4)--(8, 4)--(8, 5)--(5, 5)--cycle, linewidth(3.5)+white);
draw((5, 3)--(6, 3)--(6, 4)--(8, 4)--(8, 5)--(5, 5)--cycle, linewidth(1.5));
