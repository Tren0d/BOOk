if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-25";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(12cm);
int n = 10;
for(int i=0; i<4; ++i) draw((0,i)--(n, i));
for(int i=0; i<=n; ++i){
if(i!=n-3) draw((i, 0)--(i, 3));
}
for(int i=0; i<n; ++i){
if(i!=n-3 && i!=n-4){
label("1", (i+0.5, 2.5));
label(string(rand()%2), (i+0.5, 1.5));
label("1", (i+0.5, 0.5));
//fill(circle((i+0.5, 2.5), 0.4)--circle((i+0.5, 2.5), 0.2), red);
}
}
label("\dots", (n-3, 2.5));
label("\dots", (n-3, 1.5));
label("\dots", (n-3, 0.5));
//draw(brace((n,0), (0, 0))); label("100", ((n)/2, -2));
