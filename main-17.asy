if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-17";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(8cm, 0);
draw((0, 4)--(2, 5));
draw((0, 3)--(2, 4));
draw((0, 3)--(2, 3));
draw((0, 2)--(2, 5));
draw((0, 1)--(2, 2)--(0, 2)--(2, 1), hsv(0, 1, 1));
for(int i=1; i<=5; ++i){
dot("$r_{"+(string)i+"}$", (0, i), W);
dot("$c_{"+(string)i+"}$", (2, i), E);
}
label("$\Rightarrow$", (3, 3));
draw(shift(4, 0)*((0, 4)--(2, 5)));
draw(shift(4, 0)*((0, 3)--(2, 4)));
draw(shift(4, 0)*((0, 3)--(2, 3)));
draw(shift(4, 0)*((0, 2)--(2, 5)));
draw(shift(4, 0)*((0, 1)--(2, 2)--(0, 2)--(2, 1)--(0, 1)), hsv(0, 1, 1));
for(int i=1; i<=5; ++i){
dot("$r_{"+(string)i+"}$", shift(4, 0)*(0, i), W);
dot("$c_{"+(string)i+"}$", shift(4, 0)*(2, i), E);
}
