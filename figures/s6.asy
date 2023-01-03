import olympiad;
import cse5;
import geometry;
usepackage("amsmath") ;
usepackage("amssymb") ;
defaultpen(fontsize(10pt));
settings.tex="latex";
settings.outformat="svg";
size(8 cm) ;

pair O1 = (2, 0);
pair O2 = (15, 0);
path w1 = circle(O1, 10);
path w2 = circle(O2, 8);

pair w1_w2[] = intersectionpoints(w1, w2);
pair X = w1_w2[0];
pair Y = w1_w2[1];

pair tmp = (4, 6);

pair RS[] = intersectionpoints(line(O2, tmp), w1);
pair R = RS[0];
pair S = RS[1];

pair H = extension(X, Y, O2, S);

pair PQ[] = intersectionpoints(line(O1, H), w2);
pair P = PQ[1];
pair Q = PQ[0];

pair O3 = circumcenter(P, Q, R);
pair Dd[] = intersectionpoints(line(R, X), circumcircle(P, Q, R));
pair D = Dd[0];

pair Ee[] = intersectionpoints(line(P, X), circumcircle(P, Q, R));
pair E = Ee[0];

draw(w1);
draw(w2);
draw(X--H--Y);
draw(O1--P--Q);
draw(O2--R--S);
draw(O1--O3--O2--cycle);
draw(arc(O3, D, E), dashed);
draw(O3--X, dotted);

dot("$O_1$", O1, dir(270));
dot("$O_2$", O2, dir(O2));
dot("$X$", X, dir(350));
dot("$Y$", Y, dir(270));
dot("$R$", R, dir(30));
dot("$S$", S, dir(150));
dot("$H$", H, dir(120));
dot("$P$", P, dir(300));
dot("$Q$", Q, dir(Q));
dot("$O_3$", O3, dir(O3));