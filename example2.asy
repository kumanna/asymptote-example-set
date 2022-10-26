settings.outformat = "pdf";
size(5cm);

pair p1 = (0,0);
pair p2 = (1,1);
pair p3 = (2,0);

path mypath = p1--p2{right}..p3--cycle;
draw(mypath);
draw(rotate(90,(3,0))*shift(3,0)*mypath);
