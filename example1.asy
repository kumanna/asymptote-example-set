settings.outformat = "pdf";
size(5cm);
draw((0,0)--(1cm,0)--(1cm,2cm)--(0,1cm)--(0,0));

draw((0,0.5cm){1,10}..{0,-1}(1cm,0.5cm));
label("$A$", (0,0), S);
label("$B$", (1cm,0), S);
label("$C$", (1cm,2cm), E);
label("$D$", (0,1cm), W);
