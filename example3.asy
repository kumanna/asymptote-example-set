settings.outformat = "pdf";
size(5cm);

path mytriangle = (0,0)--(cos(pi / 3),sin(pi / 3))--(1,0)--cycle;
draw(mytriangle);
path rev_triangle = shift(0,-0.33)*rotate(180, (0.5,sqrt(3)/4))*mytriangle;
draw(rev_triangle);
