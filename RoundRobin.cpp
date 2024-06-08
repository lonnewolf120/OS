#include <bits/stdc++.h>

using namespace std;

int main(){
    const int n=3;
    int arr[]={0,1,2};
    int burst[]={4,3,1};
    int CT[n]={0};
    int TA[n]={0};
    int WT[n]={0};
    queue<tuple<int,int,int>> q;
    for(int i=0;i<n;++i){
    q.push({0,arr[i],burst[i]});

    }




    CT[0] = burst[0];
    
    for(int i=0;i<n;++i){
        CT[i]=(i==0)? burst[i]: CT[i-1]+burst[i];  
        TA[i]=CT[i]-arr[i];
        WT[i]=TA[i]-burst[i];
    }

    cout<< "ARRIVAL "<<"TURNAROUND "<<"WAITING"<<endl;
    for(int i=0;i<n;++i){
        cout<<arr[i]<<"\t"<<TA[i]<<"\t"<<WT[i]<<endl;
    }
    return 0;
}