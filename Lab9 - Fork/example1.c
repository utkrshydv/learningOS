#include <stdio.h>
#include <stdlib.h>
#include <windows.h>  // Windows API for process creation

int main()
{
    STARTUPINFO si;
    PROCESS_INFORMATION pi;

    // Initialize structures
    ZeroMemory(&si, sizeof(si));
    si.cb = sizeof(si);
    ZeroMemory(&pi, sizeof(pi));

    // Create a new process (child)
    if (!CreateProcess(
            NULL,             // No module name (use command line)
            "cmd /c echo Hello world!, process_id(pid) =", // Command to execute
            NULL,             // Process handle not inheritable
            NULL,             // Thread handle not inheritable
            FALSE,            // Set handle inheritance to FALSE
            0,                // No creation flags
            NULL,             // Use parent's environment block
            NULL,             // Use parent's starting directory 
            &si,              // Pointer to STARTUPINFO structure
            &pi)              // Pointer to PROCESS_INFORMATION structure
    ) {
        printf("CreateProcess failed (%d).\n", GetLastError());
        return 1;
    }

    printf("Hello world!, process_id(pid) = %d \n", GetCurrentProcessId());

    // Wait for child process to complete
    WaitForSingleObject(pi.hProcess, INFINITE);

    // Close process and thread handles
    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);

    return 0;
}
