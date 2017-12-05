//1 exercise
function compl(z1,z2)
    z1_m=[]
    z2_m=[]
    for i=1:100
        z1_m=[z1_m,z1^i]
        z2_m=[z2_m,z2^i]
    end
    plot(real(z1_m),imag(z1_m),'blue')
    clf()
    plot(real(z2_m),imag(z2_m),'green')
endfunction
//2 exercise
//комплексные корни с 1
function cmplsqrt1(n)=[z,z3] // n степень корня
    z=[] //матрица всех корней
    z3=[] //матрица первисных корней
    //подсчет k корня в тригонометрической форме
        for k=0:(n-1):
            z_t=(cos(2*k/n%pi)+%i*sin(2*k/n%pi))
            z=[z,z_t]
            if gsd([k,n])==1 then 
                z3=[z3,z_t] 
                end           
end
endfunction
//third task
a_m=[]
b_m=[]
c_m=[]
d_m=[]
for x=-5:0.01:5
    for y=-5:0.01:5
        //перебираем все комплексные точки пересечения
        a=x+y*%i
        b=a^(-1)
        a_m=[a_m,a]
        b_m=[b_m,b]
        b=a^2
        c_m=[c_m,b]
        b=(1-a)/(1+a)
        d_m=[d_m,b]
    end
end
plot(real(a_m),imag(a_m),'red')
clf()
plot(real(b_m),imag(b_m),'green')
clf()
plot(real(c_m),imag(c_m),'yellow')
clf()
plot(real(d_m),imag(d_m),'black')
//fourth task
//вводим матрицы с задаными параметрами
xstep=[0.1,0.2,0.2,0.1,0.15]
ystep=[0.1,0.2,0.2,0.1,0.2]
deg=[2,3,2,3,2]
n=[2,2,3,5,3]
colors=['blue','red','green','yellow']
for i=1:5
    x=-10
    y=-10
    z=[]
    while x<=10
        while y<=10
            r=int(abs(x+y*%i)^deg(i)) 
            if modulo(r,n(i))==0 then
                z=[z,(x+y*%i)]
            end
            y=y+ystep(i) //увеличение y с шагом ystep
        end
        x=x+xstep(i) // увеличение x с шагом xstep
        y=-10
    end
plot(real(z),imag(z),'+'+colors(i))
end
