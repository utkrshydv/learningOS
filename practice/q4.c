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

