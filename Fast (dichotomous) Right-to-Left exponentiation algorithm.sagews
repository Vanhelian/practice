︠f650853a-ef9b-44fc-95af-31d463a07af3s︠
x = 172
y = 456236
n = 1523

%time r = pow(x,y,n)
K = bin(y)[2:]
L = len(K)
print(K,L,r)

def al(x,y,n):
    i=0
    tmp = 1
    while i<L:
        tmp = tmp^2
        if(K[i] == '1'):
            tmp = tmp*x
        i+=1;
    print(tmp%n)

%time al(x,y,n)
︡eea70e8b-691a-479b-a607-0494ab4fdf15︡{"stdout":"\nCPU time: 0.00 s, Wall time: 0.00 s\n"}︡{"stdout":"('1101111011000101100', 19, 1246)\n"}︡{"stdout":"1246\n"}︡{"stdout":"\nCPU time: 0.01 s, Wall time: 0.01 s\n"}︡{"done":true}









