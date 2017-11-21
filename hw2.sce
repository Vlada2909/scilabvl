X=-2:0.001:2;
Y=2+cos(X)./(1+exp(2*X))
plot(X,Y)

X=-2:0.001:0;
Y=3+sin(2*X)**2./1+cos(X)**2
plot(X,Y)

X=0:0.001:2;
Y=2*sqrt(1+2*X)
plot(X,Y)
