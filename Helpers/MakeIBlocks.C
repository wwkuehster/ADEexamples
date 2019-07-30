#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char* argv[]){
	FILE *in = fopen(argv[1],"r");
	FILE *out = fopen(argv[2],"w");
	char str1[10],str2[10],str3[10],str4[10],str5[10];
	fscanf(in,"%s %s %s %s %s",str1,str2,str3,str4,str5);
	while(!feof(in)){	
		fprintf(out, "  [./%s_diff]\n",str1);
		fprintf(out, "    type=CoefDiffusion\n    variable=convected\n");
		fprintf(out,"    block = 'S%s_TRI3'\n",str1);
		fprintf(out,"    coef = %s\n",str2);
		fprintf(out, "  [../]\n\n  [./%s_conv]\n",str1);
		fprintf(out, "    type=Convection\n    variable=convected\n");
		fprintf(out,"    block = 'S%s_TRI3'\n",str1);
		fprintf(out,"    velocity = '%s %s %s'\n",str3,str4,str5);
		fprintf(out,"  [../]\n\n");
		fscanf(in,"%s %s %s %s %s",str1,str2,str3,str4,str5);
	}
fclose(in);
fclose(out);
return 0;
}
	
	