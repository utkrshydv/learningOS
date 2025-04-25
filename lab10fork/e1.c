#include <stdio.h>
#include <stdlib.h> // Include this for exit()
#include <sys/types.h>
#include <unistd.h>

int main()
{
    // Create a new process
    pid_t p = fork();

    if (p < 0) {
        perror("fork fail");
        exit(1);
    }

    printf("Hello world!, process_id(pid) = %d \n", getpid());
    return 0;
}
