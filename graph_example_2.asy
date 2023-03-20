import graph;
settings.outformat = "pdf";
size(10cm);

// y^2 = 4x
// y = sqrt(4x), -sqrt(4x)

real parabola1(real x) {
  return sqrt(4 * x);
}

real parabola2(real x) {
  return -sqrt(4 * x);
}
real xmax = 8;
draw(graph(parabola1, 0, xmax, operator=..));
draw(graph(parabola2, 0, xmax, operator=..));
xaxis("$x$", xmax=xmax + 0.5);
yaxis("$y$");
label("$0$", (0,0), SW);

// Parameterized form (t^2, 2t)
real t = 2.5;
pair touchpoint = (t**2, 2 * t);
// y - 2t = 1 / t * (x - t^2)

real mytangent(real x) {
  return 2 * t + 1 / t * (x - t**2);
}

draw(graph(mytangent, 0, xmax));
dot(touchpoint);
label("$P$", touchpoint, NW);
