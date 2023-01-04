import olympiad;
import cse5;
import geometry;
usepackage("amsmath");
usepackage("amssymb");
defaultpen(fontsize(9pt));
settings.tex="latex";
settings.outformat="svg";
size(8 cm);

pair A = dir(110);
pair B = dir(210);
pair C = dir(330);
draw(A--B--C--cycle);

pair V = extension(A, bisectorpoint(B, A, C), B, C);
pair D = foot(A, B, C);

path AVD = circumcircle(A, V, D);

pair AE[] = intersectionpoints(line(A, C), AVD);
pair E = AE[1];

pair AF[] = intersectionpoints(line(A, B), AVD);
pair F = AF[1];

draw(A--D);
draw(A--V);
draw(AVD);
draw(B--E);
draw(C--F);
draw(F--V--E);

dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$V$", V, dir(V));
dot("$D$", D, dir(D));
dot("$E$", E, dir(E));
dot("$F$", F, dir(F));

