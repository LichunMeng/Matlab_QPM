t=0:0.0001:1;

f1 = 300;
f2 = 201;

Y1 = sin(f1*2*pi*t);
Y2 = sin(f2*2*pi*t);

Y=Y1+Y2*2;

[f,A]=PSD_from_T_A(t,Y);
plot(f,(A))

