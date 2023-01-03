import olympiad;
import cse5;
import geometry;
defaultpen(fontsize(8 pt)) ;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat ="svg";
size(6 cm) ;

pair A = dir(120) ;
pair B = dir(210) ;
pair C = dir(330) ;
draw(A--B--C--cycle) ;

pair I = incenter(A, B, C);

draw(incircle(A, B, C));
draw(B--I--C);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$I$", I, dir(90));