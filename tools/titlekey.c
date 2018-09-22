#include<stdio.h>

int main() {
	
FILE *f = fopen("extracted/010080b00ad660000000000000000005.tik", "r");
FILE *f2 = fopen("final.txt", "w+");

int data;
int i;
int output;

for(i = 0x180; i < 0x190; i++) {	    
	    fseek(f, i, SEEK_SET);
	    fread(&data, sizeof(char), 1, f);
	    fprintf(f2, "%02x",data);
		}
}
