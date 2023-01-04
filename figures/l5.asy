import olympiad;
import cse5;
import geometry;
usepackage("amsmath");
usepackage("amssymb");
defaultpen(fontsize(9pt));
settings.tex="latex";
settings.outformat="svg";
size(8 cm);

pair D = dir(210);
pair C = dir(330);

pair A = rotate(70, D) * C;
pair B = rotate(110, A) * D - 0.9;
pair M = extension(A, D, B, C);
pair E = midpoint(A--B);
pair F = midpoint(C--D);
pair O = extension(A, C, B, D);

draw(A--B--C--D--cycle);
draw(F--M, dotted);
draw(A--M);
draw(B--M);
draw(A--C);
draw(B--D);

dot("$A$", A, dir(180));
dot("$D$", D, dir(D));
dot("$C$", C, dir(C));
dot("$B$", B, dir(0));
dot("$M$", M, dir(M));
dot("$E$", E, dir(220));
dot("$O$", O, dir(180));
dot("$F$", F, dir(F));