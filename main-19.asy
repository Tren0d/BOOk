if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-19";
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

int n = 8;
path p = (0,0)--(2,0)--(2,1)--(0,1)--cycle;
path q = (0,0)--(n,0)--(n,n)--(0,n)--cycle;
for(int i=0; i<n; ++i){
for(int j=0; j<n; ++j){
path sq = shift(i,j)*unitsquare;
if((max(abs(i-(n-1)/2), abs(j-(n-1)/2))+0.5)%2==0) filldraw(sq, col2[0]);
else filldraw(sq, col2[1]);
}
}
axialshade((n,0)--(n,n)--(n+1,n+1)--(n+1,-1)--cycle, col2[1], (n,n/2), white, (n+1,n/2));
axialshade((n,n)--(0,n)--(-1,n+1)--(n+1,n+1)--cycle, col2[1], (n/2,n), white, (n/2,n+1));
axialshade((0,n)--(0,0)--(-1,-1)--(-1,n+1)--cycle, col2[1], (0,n/2), white, (-1,n/2));
axialshade((0,0)--(n,0)--(n+1,-1)--(-1,-1)--cycle, col2[1], (n/2,0), white, (n/2,-1));
ddraw(q);
ddraw(p, 1, 5);
ddraw(p, 6, 2);
ddraw(p, 4, 1, 90);
ddraw(p, 7, 5, 90);
