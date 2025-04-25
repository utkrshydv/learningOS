#include<stdio.h>
void main() {
    int n, a[10],b[10],t[10],w[10],g[10],f[10],i;
    float atat = 0, awt = 0;

    for(i=0;i<10;i++){
        a[i]=0;b[i]=0;w[i]=0;g[i]=0;f[i]=0;
    }
    printf("\nEnter the number of processes: ");
    scanf("%d",&n);
    printf("\nEnter the Burst times:\n ");
    for(i=0;i<n;i++) {
        printf("p%d: ",i);
        scanf("%d",&b[i]);
    }
    printf("\nEnter the Arrival times:\n ");
    for(i=0;i<n;i++) {
        printf("p%d: ",i);
        scanf("%d",&a[i]);
    }
    g[0]=0;
    for(i=0;i<n;i++) {
        g[i+1]=g[i]+b[i];
        f[i]= g[i+1];
        w[i]=g[i]-a[i];
        t[i]=f[i]-a[i];
        awt+=w[i];
        atat+=t[i];
    }
    awt /= n;
    atat /= n;
    printf("\nProcess\tArrival Time\tBurst time\tFinish time\tWaiting time\tTurnaround time\n");
    for(i = 0; i < n; i++) {
        printf("p%d\t%d\t\t%d\t\t%d\t\t%d\t\t%d\n", i, a[i], b[i], f[i], w[i], t[i]);
    }
    printf("\nThe Average Waiting Time is %.2f\n", awt);
    printf("The Average Turnaround Time is %.2f\n", atat);
}