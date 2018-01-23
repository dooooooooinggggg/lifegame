#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// ・そのマスに生命体が存在し、周囲8マスに生命体が2体または3体存在するならば生存。
// ・そのマスに生命体が存在し、周囲8マスに生命体が1体以下または4体以上存在するならば死滅。
// ・そのマスに生命体が存在せず、周囲8マスに生命体が3体存在するならば誕生。

#define MAX_HEIGHT 60   // i
#define MAX_WIDTH  240  // j
#define LIFE_SPAN  1000 // 寿命

// 123
// 456
// 789

// 自分を5とする。
// 考慮すべき相対的場所を、数字で表す。

#define RELATIVE_POSITION1 prev_val[i - 1][j - 1]
#define RELATIVE_POSITION2 prev_val[i - 1][j]
#define RELATIVE_POSITION3 prev_val[i - 1][j + 1]
#define RELATIVE_POSITION4 prev_val[i][j - 1]
// #define RELATIVE_POSITION5 prev_val[i][j]
#define RELATIVE_POSITION6 prev_val[i][j + 1]
#define RELATIVE_POSITION7 prev_val[i + 1][j - 1]
#define RELATIVE_POSITION8 prev_val[i + 1][j]
#define RELATIVE_POSITION9 prev_val[i + 1][j + 1]

void print_func(int val[MAX_HEIGHT][MAX_WIDTH]){
    for(int i = 0; i < MAX_HEIGHT; i++){
        for(int j = 0; j < MAX_WIDTH; j++){
            if( val[i][j] == 1 ) printf("0");
            else if( val[i][j] == 0 ) printf("-");
            else printf("e");
        }
        printf("\n");
    }
    printf("\n");
}

void define_init_val(int init_val[MAX_HEIGHT][MAX_WIDTH]){
    int flag;

    for(int i = 0; i < MAX_HEIGHT; i++){
        for(int j = 0; j < MAX_WIDTH; j++){
            flag = (int)( rand() * (2.0) / (1.0 + RAND_MAX) );
            init_val[i][j] = flag;
        }
    }
}

// 被ってる
void cp_first(int init_val[MAX_HEIGHT][MAX_WIDTH], int prev_val[MAX_HEIGHT][MAX_WIDTH]){
    for(int i = 0; i < MAX_HEIGHT; i++){
        for(int j = 0; j < MAX_WIDTH; j++){
            prev_val[i][j] = init_val[i][j];
        }
    }
}

void cp_prev_to_next(int prev_val[MAX_HEIGHT][MAX_WIDTH], int next_val[MAX_HEIGHT][MAX_WIDTH]){
    for(int i = 0; i < MAX_HEIGHT; i++){
        for(int j = 0; j < MAX_WIDTH; j++){
            prev_val[i][j] = next_val[i][j];
        }
    }
}

void generational_change(int prev_val[MAX_HEIGHT][MAX_WIDTH], int next_val[MAX_HEIGHT][MAX_WIDTH]){

    int counter = 0;

    for(int i = 0; i < MAX_HEIGHT; i++){
        for(int j = 0; j < MAX_WIDTH; j++){
            if( i == 0 ){
                // 689
                if( j == 0 ) counter = RELATIVE_POSITION6 + RELATIVE_POSITION8 + RELATIVE_POSITION9;
                // 478
                else if( j == MAX_WIDTH - 1 ) counter = RELATIVE_POSITION4 + RELATIVE_POSITION7 + RELATIVE_POSITION8;
                // 46789
                else counter = RELATIVE_POSITION4 + RELATIVE_POSITION6 + RELATIVE_POSITION7 + RELATIVE_POSITION8 + RELATIVE_POSITION9;
            }else if(i == MAX_HEIGHT - 1){
                // 236
                if( j == 0 ) counter = RELATIVE_POSITION2 + RELATIVE_POSITION3 + RELATIVE_POSITION6;
                // 124
                else if( j == MAX_WIDTH - 1 ) counter = RELATIVE_POSITION1 + RELATIVE_POSITION2 + RELATIVE_POSITION4;
                // 12346
                else counter = RELATIVE_POSITION1 + RELATIVE_POSITION2 + RELATIVE_POSITION3 + RELATIVE_POSITION4 + RELATIVE_POSITION6;
            }else{
                // 23689
                if( j == 0 ) counter = RELATIVE_POSITION2 + RELATIVE_POSITION3 + RELATIVE_POSITION6 + RELATIVE_POSITION8 + RELATIVE_POSITION9;
                // 12478
                else if( j == MAX_WIDTH - 1 ) counter = RELATIVE_POSITION1 + RELATIVE_POSITION2 + RELATIVE_POSITION4 + RELATIVE_POSITION7 + RELATIVE_POSITION8;
                // 12346789
                else counter = RELATIVE_POSITION1 + RELATIVE_POSITION2 + RELATIVE_POSITION3 + RELATIVE_POSITION4 + RELATIVE_POSITION6 + RELATIVE_POSITION7 + RELATIVE_POSITION8 + RELATIVE_POSITION9;
            }

            if( prev_val[i][j] == 1 ){
                if ( counter == 2 || counter == 3 ) next_val[i][j] = 1;
                else next_val[i][j] = 0;
            }else if(prev_val[i][j] == 0){
                if ( counter == 3 ) next_val[i][j] = 1;
                else next_val[i][j] = 0;
            }else{
                printf("\n------------e------------\nin prev_val[%d][%d] :%d\n", i, j, prev_val[i][j]);
            }
            counter = 0;
        }
    }

    return;
}

int main(){
    // 初期値
    int init_val[MAX_HEIGHT][MAX_WIDTH];
    int prev_val[MAX_HEIGHT][MAX_WIDTH];
    int next_val[MAX_HEIGHT][MAX_WIDTH];

    define_init_val(init_val);
    cp_first(init_val, prev_val);
    print_func(prev_val);

    for( int i = 0; i < LIFE_SPAN; i++ ){
        sleep(1);
        printf("第%d世代\n", i + 1);
        generational_change(prev_val, next_val);
        print_func(next_val);
        cp_prev_to_next(prev_val, next_val);
    }

    return 1;
}
