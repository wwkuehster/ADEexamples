#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int Cfile();

int main(){
	system("matlab -nodisplay -nodesktop -r 'run computationtest(0,7)'");
	FILE* fp = fopen("MatlabOutput.txt","r");
	sleep(3);
	double u,v;
	char str1[20],str2[20];
	fscanf(fp,"%s %s",str1,str2);
	printf("%f\n%f\n",atof(str1),atof(str2));
	fclose(fp);

	Cfile();


return 0;}

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
