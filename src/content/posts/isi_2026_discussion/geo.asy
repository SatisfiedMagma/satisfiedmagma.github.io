import olympiad;

size(15cm);
defaultpen(fontsize(20pt));
pair A, B, C, D, E, F, G, H;

real L = 49;
real x = 9;

A = (0,L);
B = (L,L);
C = (L,0);
D = (0,0);

E = (x,L);
F = (L,L-x);
G = (L-x, 0);
H = (0, x);

draw(A--B--C--D--cycle);
draw(E--F--G--H--cycle);

dot("$A$", A, dir(135));
dot("$B$", B, dir(45));
dot("$C$", C, dir(315));
dot("$D$", D, dir(225));
dot("$E$", E, dir(90));
dot("$F$", F);
dot("$G$", G, dir(270));
dot("$H$", H, W);

draw(E--B--F--cycle);
draw(incircle(E,F,B));

markscalefactor = 0.2;
draw(rightanglemark(F,C,G), deepgreen);
