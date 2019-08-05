#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

int Cfile();
int delimiter();
int yv[10];
int xv[10];
char str1[20],str2[20];


int main(){
	system("matlab -nodisplay -nodesktop -r 'run computationtest(0,7)'");
	FILE* fp = fopen("MatlabOutput.txt","r");
	sleep(3);
	double u,v;
	fscanf(fp,"%s %s",str1,str2);
	printf("%f\n%f\n",atof(str1),atof(str2));
	fclose(fp);

	Cfile();
	delimiter();

	int i;
	for (i = 0;i < 10;i++) {
		printf("%d %d\n",yv[i],xv[i]);
	}


return 0;}

/* Just an attempt to write C file from C, here we could do
the material kernel and add the info from matlab*/

int Cfile() {
	FILE * fp;
	int i;

	const char *str1 = "\"ExampleDiffusion.h\"";
	const char *str2 = "\"wyattexamplesApp\"";
	const char *str3 = "\"diffusivity\"";

	fp = fopen ("/home/john/projects/wyattexamples/Ckernel.C","w");

	for (i = 0; i<15 ; ++i){
		if(i == 0) {
			fprintf(fp,"#include %s\n",str1);
		}
		else if(i == 1){
			fprintf(fp,"registerMooseObject(%s, ExampleDiffusion);\n",str2);
		}
		else if(i == 2){
			fprintf(fp,"template <>\n");
		}
		else if(i == 3){
			fprintf(fp,"InputParameters\n");
		}
		else if(i == 4){
			fprintf(fp,"validParams<ExampleDiffusion>(){\n");
		}
		else if(i == 5){
			fprintf(fp,"  InputParameters params = validParams<Diffusion>();\n");
		}
		else if(i == 6){
			fprintf(fp,"  return params;}\n");
		}
		else if(i == 7){
			fprintf(fp,"ExampleDiffusion::ExampleDiffusion(const InputParameters & parameters)\n");
		}
		else if(i == 8){
			fprintf(fp,"  : Diffusion(parameters), _diffusivity(getMaterialProperty<Real>(%s)){}\n",str3);
		}
		else if(i == 9){
			fprintf(fp,"Real\n");
		}
		else if(i == 10){
			fprintf(fp,"ExampleDiffusion::computeQpResidual(){\n");
		}
		else if(i == 11){
			fprintf(fp,"  return _diffusivity[_qp] * Diffusion::computeQpResidual();}\n");
		}
		else if(i == 12){
			fprintf(fp,"Real\n");
		}
		else if(i == 13){
			fprintf(fp,"ExampleDiffusion::computeQpJacobian(){\n");
		}
		else if(i == 14){
			fprintf(fp,"  return _diffusivity[_qp] * Diffusion::computeQpJacobian();}\n");
		}
	}

	fclose(fp);


	return 0;
}

/* this would reads matlaboutput.txt and place the values
for the velocities into the arrays xv and yv */

int delimiter () {
	FILE * yvxv;
	yvxv = fopen("/home/john/projects/wyattexamples/MatlabOutput.txt","r+");
	int i = 0;
	while (fscanf(yvxv, "%d %d",&yv[i],&xv[i])) {
		i++;
		if (i == 10) {
			break;
		}
	}

	return 0;
}

/* this would be how we could write the velocities into
directly into the C kernel for materials */

int kernloop() {

}
