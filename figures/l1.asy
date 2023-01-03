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
pair L = circumcenter(I, B, C);

pair D = foot(I, A, B);
pair E = foot(I, A, C);
pair I_A = 2 * I;

pair I_a = intersectionpoints(line(A, I), circumcircle(B, I, C))[1];

draw(incircle(A, B, C));

draw(A--I--L--I_a);
draw(I--B);
draw(I--C);
draw(L--B);
draw(L--C);
draw(I_a--B);
draw(I_a--C);

draw(circumcircle(A, B, C));
draw(circumcircle(B, I, C), dashed);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$I$", I, dir(90));
dot("$L$", L, dir(230));
dot("$I_a$", I_a, dir(I_a));