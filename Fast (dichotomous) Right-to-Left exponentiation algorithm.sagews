︠f650853a-ef9b-44fc-95af-31d463a07af3s︠
x = 172
y = 45623654
n = 1547445

%time r = pow(x,y,n)

def al(x,y,n):
    K = bin(y)[2:]
    L = len(K)
    i=0
    tmp = 1
    while i<L:
        tmp = tmp^2 %n
        if(K[i] == '1'):
            tmp = tmp*x % n
        i+=1;
    print("");
    print(tmp)

%time al(x,y,n)
︡9a605fcf-d6fb-476e-b99c-6ee3d6c71a21︡{"stdout":"\nCPU time: 0.00 s, Wall time: 0.00 s\n"}︡{"stdout":"\n724174\n"}︡{"stdout":"\nCPU time: 0.00 s, Wall time: 0.00 s\n"}︡{"done":true}









