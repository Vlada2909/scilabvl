//first task
//вводим координаты четырех точек
x1=input('x1=')
x2=input('x2=')
x3=input('x3=')
x4=input('x4=')
y1=input('y1=')
y2=input('y2=')
y3=input('y3=')
y4=input('y4=')
z1=input('z1=')
z2=input('z2=')
z3=input('z3=')
z4=input('z4=')
B=[x2-x1 y2-y1 z2-z1
x3-x1 y3-y1 z3-z1
x4-x1 y4-y1 z4-z1]
//проверка лежат ли точки в одной плоскости
if det(B)==0 then disp('the points lie in one plane')
else disp('the points do not lie in one plane')
end
clf()
plot(B)
//second task
//вводим координаты точки
mx=input('mx=')
my=input('my=')
mz=input('mz=')
//вводим коэффициенты уравнения плоскости
A0=input('A=')
B0=input('B=')
C0=input('C=')
D0=input('D=')
U=abs(A0*mx+B0*my+C0*mz+D0)/sqrt(A0^2+B0^2+C0^2) //формула нахождения расстояния от точки до плоскости
x=-5:0.001:5
y=-5:0.001:5
z=-5:0.001:5
plane=A0*x+B0*y+C0*z+D0
plot3d([mx my mz],plane',x',y',z')
//third task
//вводим еще одну плоскость
A1=input('A1=')
B1=input('B1=')
C1=input('C1=')
D1=input('D1=')
plane1=A1*x+B1*y+C1*z+D1
plot3d(plane',plane1',x',y',z')
phi=acos(abs(A0*A1+B1*B0+C1*C0)/(sqrt(A0^2+B0^2+c0^2)*sqrt(A1^2+B1^2+C1^2)))
deff('z=f(x,y)','z=(A0*x+B0*y+D0)/C0')
    fplot3d(x,y,f,alpha=5,theta=31)
    deff('z=f(x,y)','z=(A1*x+B1*y+D1)/C1')
fplot3d(x,y,f,alpha=31,theta=5)
//fourth task
a=input('a=')
b=input('b=')
c=input('c=')
d=input('d=')
a1=input('a1=')
b1=input('b1=')
c1=input('c1=')
d1=input('d1=')
x=input('x')
y=input('y')
z=input('z')
function planes(x,y,z)
    Q=a*x+b*y+c*z+d   //уравнения плоскости
    W=a1*x+b1*y+c1*z+d1
    if a/a1==b/b1==c/c1 then
        disp('плоскости паралельны')
        elseif a*a1+b*b1+c*c1==0
            disp('плоскости перпендикулярны')
    end
endfunction
//5 task
function r=3planes(A,B,C,D,A1,B1,C1,D1,A2,B2,C2,D2)
    //функция определяет расположение трех плоскостей
    X=(A,B,C;A1,B1,C1;A2,B2,C2)
if rank(X)==1 then
    r=rank(X)
end
if rank(X)==3
    r=4
end
if rank(X)==2 & ((A*B1==B*A1 & C*B1==B*C1) |(A2*B1==B2*A1 & C2*B1==B2*C1) | (A2*B==B2*A & C2*B==B2*C))
        r=2
    end
    if rank(X)==2 & ~((A*B1==B*A1 & C*B1==B*C1) |(A2*B1==B2*A1 & C2*B1==B2*C1) | (A2*B==B2*A & C2*B==B2*C))
        r=3
end
endfunction
//6 task
x1=input('x1=')
x2=input('x2=')
y1=input('y1=')
y2=input('y2=')
z1=input('z1=')
z2=input('z2=')
x = [x1(1),x2(1)]
    y = [x1(2),x2(2)]
    z = [x1(3),x2(3)]
    param3d(x,y,z)
//7 task
//угол между плоскостью и прямой заданой параметрическим уравнением
function t=(A,B,C,D,x0,y0,z0,l,m,n)
    A=input('A')
    B=input('B')
    C=input('C')
    D=input('D')
    x0=input('x0')
    y0=input('y0')
    z0=input('z0')
    l=input('l')
    m=input('m')
    n=input('n')
    x=[-20,20]
    y=x
    r=sin(abs(A*l+B*m+C*n)/sqrt((A**2+B**2+C**2)*(l**2+m**2+n**2)))
    deff('z=f(x,y)','z=(A*x+B*y+D)/C')
    clf()
    fplot3d(x,y,f,alpha=5,theta=31)
    t=[-20,20]
    x=x0+l*t
    y=y0+m*t
    z=z0+n*t
    param3d(x,y,z)
endfunction
