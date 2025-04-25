#include <stdio.h>

typedef struct {
    int process_id;
    int burst_time;
    int arrival_time;
    int waiting_time;
    int turnaround_time;
    int completed; 
} Process;

void sort_by_arrival(Process p[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (p[j].arrival_time > p[j + 1].arrival_time) {
                Process temp = p[j];
                p[j] = p[j + 1];
                p[j + 1] = temp;
            }
        }
    }
}

void calculate_waiting_and_turnaround_times(Process p[], int n) {
    int total_waiting_time = 0, total_turnaround_time = 0;
    int current_time = 0, completed_processes = 0;

    while (completed_processes < n) {
        int shortest_job = -1;
        int min_burst_time = 99999;  

        for (int i = 0; i < n; i++) {
            if (!p[i].completed && p[i].arrival_time <= current_time && p[i].burst_time < min_burst_time) {
                min_burst_time = p[i].burst_time;
                shortest_job = i;
            }
        }

        if (shortest_job == -1) {
            current_time++;
            continue;
        }

        p[shortest_job].waiting_time = current_time - p[shortest_job].arrival_time;
        current_time += p[shortest_job].burst_time;
        p[shortest_job].turnaround_time = p[shortest_job].waiting_time + p[shortest_job].burst_time;
        p[shortest_job].completed = 1;
        completed_processes++;

        total_waiting_time += p[shortest_job].waiting_time;
        total_turnaround_time += p[shortest_job].turnaround_time;
    }

    printf("\nProcess\tArrival Time\tBurst Time\tWaiting Time\tTurnaround Time\n");
    for (int i = 0; i < n; i++) {
        printf("P%d\t\t%d\t\t%d\t\t%d\t\t%d\n",
               p[i].process_id, p[i].arrival_time, p[i].burst_time,
               p[i].waiting_time, p[i].turnaround_time);
    }

    printf("\nAverage Waiting Time = %.2f", (float)total_waiting_time / n);
    printf("\nAverage Turnaround Time = %.2f\n", (float)total_turnaround_time / n);
}

int main() {
    int n;
    Process processes[20];

    printf("Enter number of processes: ");
    scanf("%d", &n);

    printf("\nEnter Arrival Time and Burst Time for each process:\n");
    for (int i = 0; i < n; i++) {
        processes[i].process_id = i + 1;
        printf("P%d:\n", i + 1);
        printf("Arrival Time: ");
        scanf("%d", &processes[i].arrival_time);
        printf("Burst Time: ");
        scanf("%d", &processes[i].burst_time);
        processes[i].completed = 0; 
    }

    sort_by_arrival(processes, n);
    calculate_waiting_and_turnaround_times(processes, n);

    return 0;
}
