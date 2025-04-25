#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t p2, p3, p4, p5;

    printf("P1 (Root) -> PID: %d\n", getpid());

    p2 = fork();
        printf("P2 created -> PID: %d, Parent: %d\n", getpid(), getppid());

        p4 = fork();
            printf("P4 created -> PID: %d, Parent: %d\n", getpid(), getppid());
            exit(0);
        }
        
        
    }

    p3 = fork();

        printf("P3 created -> PID: %d, Parent: %d\n", getpid(), getppid());

        p5 = fork();
            printf("P5 created -> PID: %d, Parent: %d\n", getpid(), getppid());
            exit(0);
        }
        wait(NULL); 
        exit(0);
    wait(NULL);
    wait(NULL);

    return 0;
}
