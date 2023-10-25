#include <stdio.h>

void func(int x) {
    if (x) {
        printf("Hello, world!\n");
    } else {
        printf("Hell, world!\n");
    }
}

int main() {
    int x;
    int y;
    scanf("%i %i", &x, &y);
    func(1);
    int a = x + y;
    printf("%i\n", a);
    return 0;
}
