if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-19";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(6cm);
int n = 3;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
if((i==0&&j==0)||(i==1&&j!=1)||i==2) draw(p);
}
}
