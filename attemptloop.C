#include <stdio.h>
#include<string.h>
#include <stdlib.h>
#include <unistd.h>

float points[11][11];

int main() {
  	FILE * ypxp;
  	ypxp = fopen("/home/john/projects/wyattexamples/qpoints.txt","r+");
  	int i,j;
    for (i = 0;i<11;i++){
      for (j = 0;j<11;j++){
        fscanf(ypxp,"%f %f",points[i][*],points[*][j]);
      }
    }

    for (i = 0; i<11; i++) {
      for (j = 0; j<11; j++){
        printf("%f %f\n",points[i][j]);
      }
    }

    //matlab();


  	return 0;
}
/*
int matlab() {
  for (i = 0;i<11;i++) {
    for (j = 0;j<11;j++) {
      char command[128];
      snprintf(command,sizeof(command),"matlab -r 'WyattJohnCodeIteration(%f,%f);'",xp[i],yp[j]);
      system(command);
      FILE* fp=fopen("MatlabOutput.txt","r");
      char u[20],v[20];
      fscanf(fp,"%s %s",u,v);
      velocity[i][j] =

    }
  }



  return 0;
}*/
