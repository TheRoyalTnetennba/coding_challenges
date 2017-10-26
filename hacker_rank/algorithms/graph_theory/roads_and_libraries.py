#!/bin/python3

import sys

def dfs(s):
    global visited,alist,croad,cost
    visited[s]=1;l=len(alist[s]);
    if(l!=0):
        for i in range(l):
            if(visited[alist[s][i]]==0): 
                dfs(alist[s][i])
                cost+=croad

q = int(input().strip())
for a0 in range(q):
    cost=0
    n,m,clib,croad=map(int,input().split())
    visited=[0 for i in range(n+1)];alist=[[] for i in range(n+1)]
    count=0;roads=0;road=[];current=0
    for a1 in range(m):                                            
        city_1, city_2 = map(int,input().split(' '))
        alist[city_1].append(city_2);alist[city_2].append(city_1)
    if(m==0 or croad>=clib): 
        print(n*clib)
    else:    
        for i in range(1,n+1):                                      
            if(visited[i]==0):
                dfs(i)
                cost+=clib
        print(cost)


