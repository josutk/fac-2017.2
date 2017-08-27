#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc , char* argv[]){

  int  i,sizeTitle;
  char *title ;
  printf("# de parametros :%d\n",argc-1 );
  sizeTitle = strlen(argv[0]);
  title = argv[0];

  printf("Nome do executavel:");
  for (i = 2 ; i< sizeTitle ; i++){
    printf("%c",title[i]);
  }
    printf("\n" );
  for(i = 1 ; i < argc; i++){
    printf("Parametro #%d: %s\n",i, argv[i]);
  }
  return 0;
}
