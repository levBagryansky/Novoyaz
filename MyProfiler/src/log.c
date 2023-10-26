#include <stdio.h>

void callLogger(char* calleeName, char* callerName, long int valID){
    printf("[CALL] %s\n", calleeName);
}

void operationLogger(char *op_name) {
    printf("[LOG] '%s'\n", op_name);
}
