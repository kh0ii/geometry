import olympiad;
import cse5;
import geometry;
defaultpen(fontsize(8 pt)) ;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat ="svg";
size(7 cm) ;

pair A = dir(100) ;
pair B = dir(210) ;
pair C = dir(330) ;
draw(A--B--C--cycle) ;

pair D = foot(A, B, C);
pair E = foot(B, C, A);
pair F = foot(C, A, B);

pair EF_O[] = intersectionpoints(line(E, F), circumcircle(A, B, C));
pair P = EF_O[0];

pair Q = extension(B, P, D, F);
pair H = extension(A, D, B, E);

draw(circumcircle(A, B, C));
draw(A--D);
draw(B--E);
draw(C--F);
draw(A--Q);
draw(E--F--P);
draw(Q--P--B);
draw(D--F--Q);
draw(A--P);

draw(rightanglemark(A, D, B, 1.5));
draw(rightanglemark(B, E, C, 1.5));
draw(rightanglemark(C, F, A, 1.5));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));
dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
dot("$H$", H, dir(H));