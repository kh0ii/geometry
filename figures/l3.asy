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

pair O = circumcenter(A, B, C);

draw(B--O--C);
draw(O--A);

draw(anglemark(O, C, B, 3, 4));
draw(anglemark(C, B, O, 3, 4));

draw(anglemark(O, B, A, 2.5, 3.5, 4.5));
draw(anglemark(B, A, O, 2.5, 3.5, 4.5));

draw(anglemark(O, A, C, 6));
draw(anglemark(A, C, O, 6));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$O$", O, dir(90));