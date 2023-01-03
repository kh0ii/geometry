import olympiad;
import cse5;
import geometry;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat="svg";
size(10 cm) ;

pair A = dir(120) ;
pair B = dir(210) ;
pair C = dir(330) ;
draw(A--B--C--cycle) ;

pair M = midpoint(B--C);
pair E = foot(B, A, C);
pair F = foot(C, A, B);
pair H = extension(B, E, C, F);
pair X = rotate(0, A) * A + 0.3;
pair Y = rotate(0, A) * A - 0.3;

draw(B--E);
draw(C--F);
draw(M--E);
draw(M--F);
draw(A--M);
draw(E--F);
draw(A--H);
draw(X--Y, Arrows);
draw(circumcircle(A, E, F));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$M$", M, dir(M));
dot("$E$", E, dir(20));
dot("$F$", F, dir(200));
dot("$H$", H, dir(290));




