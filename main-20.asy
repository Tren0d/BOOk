if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-20";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm);
for(int i=0; i<2; ++i){
for(int j=0; j<2; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
draw(p);
}
}
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path p = (i,j)--(i,j+1)--(i+1,j+1)--(i+1,j)--cycle;
if((j==0&&i!=2)||(j==1&&i!=0)) draw(shift(3, 0)*p);
}
}
for(int i=0; i<3; ++i){
for(int j=0; j<2; ++j){
path p = (i,j)--(i,j+1)--(i+1,j+1)--(i+1,j)--cycle;
if(j==0||(j==1&&i!=2)) draw(shift(7, 0)*p);
}
}
