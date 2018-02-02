#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
int main(){
    int flag;
    int result[2500];
    // for( int i = 0;  )
    for(int i = 0; i < 2500; i++){

        if( i <= 49 ){
            result[i] = 0;
            continue;
        }
        if( i >= 2450 ){
            result[i] = 0;
            continue;
        }
        if( i % 50 == 0 ){
            result[i] = 0;
            continue;
        }
        if( i % 50 == 49 ){
            result[i] = 0;
            continue;
        }
        flag = (int)( rand() * (2.0) / (1.0 + RAND_MAX) );
        result[i] = flag;
    }

    for(int i = 0; i < 2500; i++){
        printf("%d, ", result[i]);
    }


    return 1;
}
