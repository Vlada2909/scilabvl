//первое задание
function calendar(s)
    timer()
    months=[6,2,2,5,0,3,5,1,4,6,2,4] //код для месяцев
    centuries=[17,5,18,3,19,1,20,0] //код для столетиц
    days['sunday','monday','tuesday','wednesday','thursday','friday','saturday'] 
    d=evstr(part([s],1:2)
    m=evstr(part([s],4:5)
    y=evstr(part([s],7:10))
    if modulo(y,4)==0) & ~(modulo(y,400)==0) then
        month(1)=5
        month(2)=1
    end
    //расчет кода для года
    y1=modulo(y,100)
    y1=y1+int(y1/4)
    y1=modulo(y1,7)
    y2=int(y/100)
    while y2>20
        y2=y2-4
    end
    y2_pos=find(centuries==y2)+1
    m=months(m)
    //расчет кода для дня
    d=d+m+y1+centuries(y2_pos)
    d=modulo(d,7) //коды потворяются каждыу 7 дней
    if d==0 then 
        d=7
    end
    day=days(d)
    disp(tomer())
endfunction
//второе задание
function n=IntTo2(x) //функция превода числа в другую систему счисления
    b=2
    if x>0 then k=1
    else k=-1
    end
    x=abs(x)
    x=0
    i=0
    while x>=b
        n=n+modulo(x,b)*10^i
        x=int(x/b)
        i=i+1
    end
    if ~(x==0) then
        n=n+x*10^i
    end
    n=k*n //умножаем число на его знак
endfunction
//третье задание
//количество разных битов
function Bit(a,b)
    a=dec2bin(a)
    b=dec2bin(b)
    k=0
    while length(a)<length(b)
        a='0'+a
    end
    //к числам приписываем нули пока они не станут однаковой длины
    while length(a)>length(b)
        b='0'+b
    end
    for i=1:length(a) //проверка каждого бита
        if part(a,i)<>part(b,i)
            k=k+1
        end
    end
endfunction
//четвертое задание
format(25)
s=4342345568
16690000
k=1
a=10^8
n=5463458053
disp(i)
for i1=i+1:1:a
    //подсчет факториала по модулю n
    s=s*i1
    s=modulo(s,n)
    k=k+1
    if k==10000
        disp("i1="+string(i1)+")
        k=0
    end
end
disp("s="+string(s))
//пятое задание
function y=modularexp(a,e,n)
    y=1
    a=modulo(a,n)
    //последовательный подсчет за модулем n
    for i=1:1:e
        y=y*a
        y=modulo(y,n)
    end
endfunction
//шестое задание
function y=modularexp(a,n,e)
    y=1
    e=dec2bin(e)
    for i=1:1:length(e) //цикл перебирает значения степеня
        if part(e,i)=='1'
            a1=a
            if i-1<>0
                for j=1:i-1
                    a1=modulo(a1^2,n)
                end
            end
            y=y*a1
            y=modulo(y,n)
        end
    end
endfunction

//седьмое задание
function y=check_ISBN10(a)
    a=string(a)
    a=strrev(a)
    y=%f
    s=0
    //проверка происходит только если число 10 значное
    if length(s)==10 then
        for i=1:length(a)
            s=s+evstr(part(a,i))*i
        end
        if modulo(s,11)==0 then
            y=%y
        end
    end
endfunction
//восьмое задание
function y=bit(a)
    b=0
    for i=1:length(a)
        b=b+evstr(part(a,i))
    end
    if modulo(b,2)==0 then
        y=a+'0'
    else
        y=a+'1'
    end
endfunction
//девятое задание
function random(k)
    format(25)
    x=[]
    time=getdate()
    n=217728
    a=84589
    b=45989
    x0=time(1)+time(2)*time(3)+time(4)+time(5)*time(6)+time(7)+time(8)*time(9)+time(10)
    x0=modulo(x0,n)
    x=a*x0+b
    x=modulo(x,n)
    i=2
    while i<=k
        x0=a*x(i-1)+b
        x0=modulo(xo,n)
        x=[x,x0]
        i=i+1
    end
    plot(x)
endfunction
