#include<stdio.h>

void findWaitingTime(int processes[], int n, int bt[], int wt[], int at[]) {
    int service_time[n];
    service_time[0] = 0;
    wt[0] = 0;
    for (int i = 1; i < n ; i++ ) {
        service_time[i] = service_time[i-1] + bt[i-1];
        wt[i] = service_time[i] - at[i];
        if (wt[i] < 0)
            wt[i] = 0;
    }
}

void findTurnAroundTime(int processes[], int n, int bt[], int wt[], int tat[]) {
    for (int i = 0; i < n ; i++)
        tat[i] = bt[i] + wt[i];
}

void findavgTime(int processes[], int n, int bt[], int at[]) {
    int wt[n], tat[n], total_wt = 0, total_tat = 0;
    findWaitingTime(processes, n, bt, wt, at);
    findTurnAroundTime(processes, n, bt, wt, tat);
    printf("+----------+------------+--------------+-----------------+--------------+\n");
    printf("| Processes | Burst time | Arrival time | Waiting time    | Turn around  |\n");
    printf("+----------+------------+--------------+-----------------+--------------+\n");
    for (int i=0; i<n; i++) {
        total_wt = total_wt + wt[i];
        total_tat = total_tat + tat[i];
        printf("| %d\t   | %d\t     | %d\t       | %d\t\t  | %d\t     |\n", i+1, bt[i], at[i], wt[i], tat[i]);
    }
    printf("+----------+------------+--------------+-----------------+--------------+\n");
    printf("Average waiting time = %.1f\n", (float)total_wt / (float)n);
    printf("Average turn around time = %.1f\n", (float)total_tat / (float)n);
}

int main() {
    int processes[] = {1, 2, 3};
    int n = sizeof processes / sizeof processes[0];
    int burst_time[] = {10, 5, 8};
    int arrival_time[] = {0, 1, 1};
    findavgTime(processes, n, burst_time, arrival_time);
    return 0;
}
