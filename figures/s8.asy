import olympiad;
import cse5;
import geometry;
usepackage("amsmath");
usepackage("amssymb");
defaultpen(fontsize(9pt));
settings.tex="latex";
settings.outformat="svg";
size(12 cm);

pair A = dir(105);
pair G_1 = (0, 0);
pair G_2 = (2, 0);

pair B = foot(G_2, A, rotate(90, A) * G_1);

path g1 = circle(A, 2 * G_1 - A);
path g2 = circle(B, 2 * G_2 - B);

pair MN[] = intersectionpoints(g1, g2);
pair M = MN[0];
pair N = MN[1];

pair CM[] = intersectionpoints(line(foot(M, A, G_1), M), g1);
pair C = CM[1];

pair DM[] = intersectionpoints(line(foot(M, B, G_2), M), g2);
pair D = DM[0];

pair E = extension(A, C, B, D);
pair P = extension(A, N, C, D);
pair Q = extension(B, N, C, D);
pair I = midpoint(A--B);

draw(g1);
draw(g2);
draw(M--I);
draw(A--B);
draw(C--D);
draw(A--N);
draw(B--N);
draw(C--E--D);
draw(M--N);
draw(P--E--Q);
draw(A--M--B);
draw(C--N--D);
draw(E--M);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B)); 
dot("$G_1$", G_1, dir(0));
dot("$G_2$", G_2, dir(0));
dot("$M$", M, dir(350));
dot("$N$", N, dir(N));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$P$", P, dir(330));
dot("$Q$", Q, dir(330));
dot("$I$", I, dir(I)); 