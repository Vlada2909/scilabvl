//exersise 1
timer()
n=primes(10^6)
disp(x)
disp("time="+string(timer())) //вывод времени
//exersise 2
q=size(n)  // поиск всех простых чисел и нахождение их количества
disp("time="+string(timer()))
//exersise 3
n=-1
disp("")
while (n<2) | (n>10^6)   
  n=input("введите n")
end
x=primes(n)
n1=size(x)
disp("п(n)="+string(n2(2)))
disp("time="+string(timer())
//exersise 4
y1=[]
n=[2:1:1000]
for i=1:1:999
    x=primes(n(i))
    n1=size(x)
    y1=[y1,n2(2)]
end
y2=n./log1p(n)
plot(n,y1,'green')
plot(n,y2,'red')
disp("time="+string(timer()))
//exersise 5
p=primes(10^5)
disp("time="+string(timer()))
n1=size(p)
n=1
while p(n)<10^4     //замена всех простых чисел<10^10 нулями
    p(n)=0
    n=n+1
end
disp("time="+string(timer()))

kilkist=0

x1=1
x2=1
x3=1
x4=1
x5=1
x6=1
x7=1
//exersise 6
N2=10^4
x=rand(1,N2)
x=x*10^
for i=1:1:N2
    while x(i)<10^4
        x(i)=x(i)*10
    end
    x(i)=round(x(i))                //округленние елемента
    x1=modulo(x(i),2)
    x2=modulo(x(i),3)
    x3=modulo(x(i),5)
    x4=modulo(x(i),7)              //отброс чисел, которые делятся на одно из первых 7 простых чисел
    x5=modulo(x(i),11)
    x6=modulo(x(i),13)
    x7=modulo(x(i),17)
    if (x1==0) | (x2==0) | (x3==0) | (x4==0) | (x5==0) | (x6==0) | (x7==0)
        continue
    end
    
    for k=n:1:n1(2)
        if x(i)==p(k)          //проверяем принадлежит ли елемент матрице простых чисел
            kilkist=kilkist+1
            break
        end
    end
    
        
end
disp(kilkist)
persent=kilkist/N2*100   
disp(string(persent)+"%")
//exersise 7
x=primes(1000)
n=size(x)
p=0
q=0
//цикл проверяет все комбинации для p i q для p<q 
for i=1:1:n(2)-1
    for j=(i+1):1:n(2)
        if 2^x(i)+1==3*x(j
            p=x(i)
            q=x(j)
            break
        end
    end
    if p>0
        break
    end
    
    
end
disp("p="+string(p))
disp("q="+string(q))
disp("time="+string(timer()))
