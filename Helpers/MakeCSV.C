#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

typedef struct node {
	int elt;
	float coef;
	float velx;
	float vely;
	float velz;
	struct node *next;
} Node;
	
Node *addOrdered (Node *list, int c, float d, float x, float y, float z) {
	Node *newOne = (Node *) malloc ( sizeof(Node) );
	newOne->elt = c;
	newOne->coef = d;
	newOne->velx = x;
	newOne->vely = y;
	newOne->velz = z;
	newOne->next = NULL;

	if (list == NULL) return newOne;
	if (c < list->elt) {
		newOne->next = list;
		return newOne;
	}

	Node *current = list, *after = list->next;
	while (after!=NULL && after->elt < c) {
		current = after;
		after = after->next;
	}

	current->next = newOne;
	newOne->next = after;
	return list;
}
void printList(Node *list, FILE* fp) {
	while (list != NULL) {
		fprintf(fp,"%d %.1f %.1f %.1f %.1f \n", list->elt, list->coef, list->velx, list->vely, list->velz);
		list = list->next;
	}
	return;
}


int main(int argc, char* argv[]){
	FILE *in = fopen(argv[1],"r");
	FILE *out = fopen(argv[2],"w");
	Node *head = NULL;
	char str[10];
	srand(time(NULL));
	float r1=rand()%11 / 10.0;
	float r2=rand()%21 / 10.0;
	float r3=rand()%11 / 10.0;
	float r4=rand()%21 / 10.0;
	while (!feof(in)){
		fscanf(in,"%s\n",str);
		r1=rand()%11 / 10.0;
		r2=rand()%21 / 10.0;
		r3=rand()%11 / 10.0;
		r4=rand()%21 / 10.0;
		if (strlen(str)==5){
		head=addOrdered(head,atoi(str),r1,r2,r3,r4);
		}
	}
	
	printList(head,out);
	fclose(in);
	fclose(out);
	return 0;

}