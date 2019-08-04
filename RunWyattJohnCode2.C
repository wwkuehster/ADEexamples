#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(int argc, char* argv[]){
	double xpoint = atof(argv[1]);
	double ypoint = atof(argv[2]);
	char command[128];
	snprintf(command,sizeof(command),"matlab -r 'WyattJohnCodeIteration(%lf,%lf);'",xpoint,ypoint);
	system(command);
	
	FILE* fp = fopen("MatlabOutput.txt","r");
	char u[10],v[20];
	fscanf(fp,"%s %s",u,v);
	printf("%lf\n%lf\n",atof(u),atof(v));
return 0;
}
