if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(3cm, 0);
int [][] x = {{1, 1, 1},{0, 0, 1}};
for(int i=0; i<2; ++i){
for(int j=0; j<3; ++j){
path p = (j,i)--(j,i+1)--(j+1,i+1)--(j+1,i)--cycle;
if(x[i][j] == 1) draw(p);
}
}
