settings.outformat = "pdf";
size(15cm);

// cos(2 pi / N * k), sin(2 pi / N * k), k = 0, 1, ... N
path gen_polygon(int N, real rot_angle=0, pair shift_p=(0,0)) {
  path p = (cos(2 * pi * 0 / N), sin(2 * pi * 0 / N));
  for (int i = 1; i <= N; i = i + 1) {
    p = p--(cos(2 * pi * i / N), sin(2 * pi * i / N));
  }
  return shift(shift_p)*rotate(rot_angle) * p;
}

for (int i = 3; i <= 10; i = i + 1) {
  draw(gen_polygon(i, 90, (2.5 * (i - 3),0)));
  label("$N = " + (string) i + "$", (2.5 * (i - 3), -1.5));
}
