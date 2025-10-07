if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="main-29";
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

pair a = (0, 0), b = (3, 0), c = (1, 2), d = (1, -3), e = (-3, -1), f = (-2, 2), g = (4, 5);
draw(a--b--c--cycle, cyan);
draw(a--d^^a--e^^a--f--g);
dot("Good", a, W, green);
dot("Good", b, E, green);
dot("Good", c, N, green);
dot("Bad", d, S, red);
dot("Bad", e, SW, red);
dot("Will become bad", f, W, purple);
dot("Bad", g, N, red);
label("$\frac{E}{V}=1$", (-3, 4));
