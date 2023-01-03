import olympiad;
import cse5;
import geometry;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat="svg";
size(8 cm) ;

pair O = (0,0);
pair A = (-3.34,3.72);
pair B = (4.7,1.69);
pair C = (4.15,-2.79);
pair D = (-3.72,-3.34);

pair I_1 = incenter(A, B, C);
pair I_2 = incenter(D, B, C);

 /* draw figures */
draw(circle((0,0), 5)); 
draw(A--B--C--D--cycle); 
draw(A--C);
draw(D--B);
draw(I_1--I_2--C--B--cycle);
draw(I_1--C);
draw(I_2--B);
draw(incircle(A, B, C));
draw(incircle(D, B, C));

dot("$O$", O, dir(270));
dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(D));
dot("$I_1$", I_1, dir(I_1));
dot("$I_2$", I_2, dir(I_2));