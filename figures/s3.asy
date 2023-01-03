import olympiad;
import cse5;
import geometry;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat="pdf";
size(8 cm) ;

pair A = dir(120) ;
pair B = dir(210) ;
pair C = dir(330) ;
draw(A--B--C--cycle) ;

pair H = orthocenter(A, B, C);
pair M = extension(B, H, A, C);
pair N = extension(C, H, A, B);
pair W = (B + C) / 2 - 0.2;

path w1 = circumcircle(B, W, N);
path w2 = circumcircle(C, W, M);

pair c_w1 = circumcenter(B, W, N);
pair c_w2 = circumcenter(C, W, M);

pair X = intersectionpoints(line(W, c_w1), w1)[0];
pair Y = intersectionpoints(line(W, c_w2), w2)[0];
pair E = extension(X, Y, A, W);

draw(w1);
draw(w2);
draw(circumcircle(A, N, M));
draw(X--H--Y, dotted);
draw(A--E--W, dotted);
draw(X--W--Y);
draw(N--H--M);
draw(C--H--B);
draw(N--M);
draw(A--H);

draw(rightanglemark(A, N, C, 1));
draw(rightanglemark(A, M, B, 1));

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$H$", H, dir(H));
dot("$M$", M, dir(M));
dot("$N$", N, dir(N));
dot("$W$", W, dir(W));
dot("$X$", X, dir(X));
dot("$Y$", Y, dir(Y));
dot("$E$", E, dir(E));
