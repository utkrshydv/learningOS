#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main() {
    pid_t p1, p2, p3, p4, p5;

    printf("P1 (Root) -> PID: %d\n", getpid());

    p2 = fork(); 
    if (p2 == 0) {
        printf("P2 created -> PID: %d, Parent: %d\n", getpid(), getppid());

        p4 = fork(); 
        if (p4 == 0) {
            printf("P4 created -> PID: %d, Parent: %d\n", getpid(), getppid());
        }
        else {
            wait(NULL); 
        }
        exit(0);
    }
    
    p3 = fork(); 
    if (p3 == 0) {
        printf("P3 created -> PID: %d, Parent: %d\n", getpid(), getppid());

        p5 = fork(); 
        if (p5 == 0) {
            printf("P5 created -> PID: %d, Parent: %d\n", getpid(), getppid());
        }
        else {
            wait(NULL); 
        }
        exit(0);
    }

    wait(NULL); 
    wait(NULL);
    return 0;
}
