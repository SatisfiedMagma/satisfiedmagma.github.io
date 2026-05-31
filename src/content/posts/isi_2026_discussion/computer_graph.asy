import cse5;
import graph; size(25cm);
ngraph = 15000; 

real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(14); defaultpen(dps); /* default pen style */ 
pen dotstyle = black; /* point style */ 
real xmin = -1, xmax = 11, ymin = -1, ymax = 8.5;

pen qqwuqq = rgb(0.,0.39215686274509803,0.); pen cqcqcq = rgb(0.7529411764705882,0.7529411764705882,0.7529411764705882); pen svsvsv = rgb(0.1450980392156863,0.1450980392156863,0.1450980392156863); 

real f1 (real x) {return (log(x))^(2)+1/(log(x))^(2);} 

draw(graph(f1,0.01,10.99), linewidth(0.8) + qqwuqq, ArcArrows); 
draw((1.,ymin)--(1.,ymax), linewidth(0.8) + linetype("4 4") + red);
draw((2.718,ymin)--(2.718,ymax), linewidth(0.8) + linetype("4 4") + red); /* line */

draw((0.36787944117144233,ymin)--(0.36787944117144233,ymax), linewidth(0.8) + linetype("4 4") + red); /* line */
draw((xmin, 0.*xmin + 2.)--(xmax, 0.*xmax + 2.), linewidth(0.8) + linetype("2 2") + qqwuqq);
draw((5.160327260191082,ymin)--(5.160327260191082,ymax), linewidth(0.8) + dotted + red);

Label laxis; laxis.p = fontsize(16); 
xaxis(xmin, xmax,defaultpen+svsvsv, Ticks(laxis, Step = 1, Size = 2, NoZero),ArcArrows, above = true); 
yaxis(ymin, ymax,defaultpen+svsvsv, Ticks(laxis, Step = 1, Size = 2, NoZero),ArcArrows, above = true); /* draws axes; NoZero hides '0' label */ 

pair T = (exp(1.64),0);
pair U = (2.718, 0);
pair V = (1/2.718, 0);

dot("$(e^{\beta}, 0)$", T, dir(40)*1.6);
dot("$(e,0)$", U, dir(40)*1.6);
dot("$\left(\frac 1 e , 0\right)$", V, dir(40));

clip((xmin-0.4,ymin-0.4)--(xmin-0.4,ymax+0.4)--(xmax+0.4,ymax+0.4)--(xmax+0.4,ymin-0.4)--cycle); 
