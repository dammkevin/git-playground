#include <stdio.h>

int main() {
    int number, max;

    while (scanf("%d", &number) != EOF) {
        max = 0;

        while (number != 0) {
            if (number > max) {
                max = number;
            }
            scanf("%d", &number);
        }

        printf("%d\n", max);
    }

    return 0;
}

