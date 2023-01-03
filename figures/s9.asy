import olympiad;
import cse5;
import geometry;
usepackage("amsmath");
usepackage("amssymb");
defaultpen(fontsize(9pt));
settings.tex="latex";
settings.outformat="svg";
size(11 cm);

pair A = dir(105);
pair B = dir(210);
pair C = dir(330);
draw(A--B--C--cycle);

pair O = circumcenter(A, B, C);
pair H = orthocenter(A, B, C);
pair D = foot(A, B, C);
pair E = foot(B, C, A);
pair F = foot(C, A, B);

pair OK[] = intersectionpoints(circumcircle(A, O, D), circumcircle(B, O, E));
pair K = OK[0];

//draw(circumcircle(A, B, C));
//draw(circumcircle(A, D, O));
//draw(circumcircle(B, E, O));
draw(arc(circumcenter(A, D, O), circumradius(A, D, O), 180, 360));
draw(arc(circumcenter(A, D, O), circumradius(A, D, O), 0, 60));

draw(arc(circumcenter(B, E, O), circumradius(B, E, O), 220, 360));
draw(arc(circumcenter(B, E, O), circumradius(B, E, O), 0, 2));

draw(O--K, dotted);
draw(A--D);
draw(B--E);
draw(C--F);

dot("$A$", A, dir(70));
dot("$B$", B, dir(270));
dot("$C$", C, dir(C));
dot("$D$", D, dir(300));
dot("$E$", E, dir(0));
dot("$F$", F, dir(F));
dot("$O$", O, dir(300));
dot("$H$", H, dir(120));
dot("$K$", K, dir(220));