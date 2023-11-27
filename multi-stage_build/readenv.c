#include <stdio.h>
#include <stdlib.h>

int main()
{
    const char* value = getenv("FOOBAR");
    printf("FOOBAR: %s\n", value);
}
