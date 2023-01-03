import olympiad;
import cse5;
import geometry;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat="svg";
size(8 cm) ;

pair A = dir(120) ;
pair B = dir(210) ;
pair C = dir(330) ;
draw(A--B--C--cycle) ;

pair H = orthocenter(A, B, C);
pair C_ = foot(C, A, B);
pair B_ = foot(B, A, C);
pair A_ = foot(A, B, C);

pair CH_AB[] = intersectionpoints(line(C, H), circle(A, B));
pair M = CH_AB[0];
pair N = CH_AB[1];

pair BH_AC[] = intersectionpoints(line(B, H), circle(A, C));
pair P = BH_AC[0];
pair Q = BH_AC[1];

draw(B--P--Q);
draw(C--M--N);
draw(circle(A, B));
draw(circle(A, C));
draw(rightanglemark(A, C_, C, 1.5));
draw(rightanglemark(B, B_, A, 1.5));
draw(rightanglemark(A, A_, B, 1.5));
draw(A--N);
draw(A--P);
draw(A--Q);
draw(A--M);
draw(P--C--Q);
draw(M--B--N);
draw(A_--A);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$M$", M, dir(280));
dot("$N$", N, dir(N));
dot("$P$", P, dir(P));
dot("$Q$", Q, dir(Q));
dot("$C'$", C_, dir(210));
dot("$B'$", B_, dir(10));
dot("$A'$", A_, dir(A_));
dot("$H$", H, dir(H));	