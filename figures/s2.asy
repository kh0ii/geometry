import olympiad;
import cse5;
import geometry;
defaultpen(fontsize(8 pt)) ;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat ="svg";
size(8 cm) ;

pair A = dir(120) ;
pair B = dir(210) ;
pair C = dir(330) ;
draw(A--B--C--cycle) ;

pair I = incenter(A, B, C);
pair O = circumcenter(I, B, C);

pair D = foot(I, A, B);
pair E = foot(I, A, C);

draw(incircle(A, B, C));

draw(O--D);
draw(O--E);
draw(O--B);
draw(O--C);
draw(I--D);
draw(I--E);

draw(rightanglemark(B, D, I, 1.5));
draw(rightanglemark(I, E, C, 1.5));
draw(A--I--O, red);

draw(circumcircle(A, B, C), dotted);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$I$", I, dir(90));
dot("$O$", O, dir(O));
