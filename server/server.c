#include <stdlib.h>
#include <fcgi_stdio.h>

int main(void) {
    int count = 0;
    while (FCGI_Accept() >= 0) {
        printf("Content-type: text/html\r\n"
               "\r\n"
               "<html>\n"
               "<head><title>Hello World!</title></head>\n"
               "<body>\n"
               "<h1>Hello World!</h1>\n"
               "</body>\n"
               "</html>\n");
    }
    return 0;
}