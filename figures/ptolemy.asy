/* File unicodetex not found. */

 /* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki, go to User:Azjps/geogebra */
import olympiad;
import cse5;
import geometry;
defaultpen(fontsize(8 pt)) ;
usepackage("amsmath") ;
usepackage("amssymb") ;
settings.tex="latex";
settings.outformat ="svg";
size(7 cm) ;

pair O = (0,0);
pair A = (-3.87,3.16);
pair B = (0.34,4.99); 
pair C = (4.87,-1.15);
pair D = (-3.79,-3.26); 
pair E = (-1.54,1.23);
 /* draw figures */
draw(circle(O, 5)); 
draw(A--D); 
draw(D--C); 
draw(C--B); 
draw(B--A); 
draw(A--C); 
draw(D--B); 
draw(A--E); 

draw(anglemark(D, A, E, 15));
draw(anglemark(C, A, B, 15));

dot("$O$", O, dir(270));
dot("$A$", A, dir(A));
dot("$B$", B, dir(B));
dot("$C$", C, dir(C));
dot("$D$", D, dir(220));
dot("$E$", E, dir(300));
 
