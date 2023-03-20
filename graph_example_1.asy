size(20cm);
settings.outformat = "pdf";
import graph;

real myfunction(real x) {
  return exp(-0.1 * x) * cos(x);
}

draw(graph(myfunction, 0, 8 * pi), red + dashed);
xaxis("$x$", xmax = 8 * pi + 1);
yaxis("$y$", ymax=2);
xtick("$0$", 0, NE, size=0);
for (int i = 1; i <= 8; i = i + 1) {
  string s = ((string) i) + "\pi";
  if (i == 1) s = "\pi";
  xtick("$" + s + "$", i * pi);
}
