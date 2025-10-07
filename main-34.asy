if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-34";
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

size(12cm);
int n = 10;
for(int i=0; i<4; ++i) draw((0,i)--(n, i));
for(int i=0; i<=n; ++i){
if(i!=n-3) draw((i, 0)--(i, 3));
}
for(int i=0; i<n; ++i){
if(i<n-4){
label(string(100-i), (i+0.5, 2.5));
label(string(101-i), (i+0.5, 1.5));
label(string(102-i), (i+0.5, 0.5));
}
else if (i>n-3){
label(string(n-i), (i+0.5, 2.5));
label(string(n+1-i), (i+0.5, 1.5));
label(string(n+2-i), (i+0.5, 0.5));
}
}
label("\dots", (n-3, 2.5));
label("\dots", (n-3, 1.5));
label("\dots", (n-3, 0.5));
//draw(brace((n,0), (0, 0))); label("100", ((n)/2, -2));
