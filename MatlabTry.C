#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main(){
	system("matlab -nodisplay -nodesktop -r 'run computationtest(0,7)'");
	FILE* fp = fopen("MatlabOutput.txt","r");
	sleep(3);
	double u,v;
	char str1[20],str2[20];
	fscanf(fp,"%s %s",str1,str2);
	printf("%f\n%f\n",atof(str1),atof(str2));
	fclose(fp);
return 0;}
