#include <stdio.h>

void main(){
  int n, a[10], b[10], t[10], w[10], f[10], g[10];
float at=0, awt=0;

for(int j=0; j<10; j++){
  a[j]=0; b[j]=0; w[j]=0; g[j]=0; f[j]=0;
}

printf("No of processes: ");
scanf("%d", &n);

for(int i=0; i<n; i++){
  printf("Enter burst times: \n");
  printf("p%d: ", i);
  scanf("%d", &b[i]);

  printf("Enter arrival times: \n");
  printf("p%d: ", i);
  scanf("%d", &a[i]);

}


g[0]=0;
for(int i=0; i<n; i++){
  g[i+1]=g[i]+b[i];
  f[i]=g[i+1];
  w[i]=g[i]-a[i];
  t[i]=f[i]-a[i];
  awt+=w[i];
  at+=t[i];
}

awt/=n;
at/=n;

printf("\nprocess\tarrivaltime\tburst time\tfinish time\twaiting time\tTurnaround Time\n");
  for(int i=0; i<n; i++){
  printf("p%d\t%d\t%d\t%d\t%d\t%d\n", i,a[i], b[i], f[i], w[i], t[i]);
  }
  printf("\nAverage waiting time: %.2f\n", awt);
  printf("\nAverage Turnaround time: %.2f\n", at);

}


