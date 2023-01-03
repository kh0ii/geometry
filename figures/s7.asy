import olympiad;
import cse5;
import geometry;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(9pt));
settings.tex="latex";
settings.outformat="svg";
size(11 cm) ;

pair A = dir(120) ;
pair B = dir(210) ;
pair C = dir(330) ;
draw(A--B--C--cycle) ;

pair M = midpoint(B--C);
pair E = foot(B, A, C);
pair F = foot(C, A, B);
pair K = midpoint(M--E);
pair L = midpoint(M--F);
pair X = rotate(270, A) * A;
pair H = extension(B, E, C, F);
pair T = extension(A, X, K, L);

draw(B--E);
draw(C--F);
draw(M--E);
draw(M--F);
draw(K--L);
draw(A--T);
draw(M--T);
draw(T--K);
draw(A--M);
draw(E--F);
draw(A--H);
draw(circumcircle(A, E, F));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$M$", M, dir(M));
dot("$E$", E, dir(20));
dot("$F$", F, dir(F));
dot("$K$", K, dir(330));
dot("$L$", L, dir(L));
dot("$T$", T, dir(T));
dot("$H$", H, dir(280));

