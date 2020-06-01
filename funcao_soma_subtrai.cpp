#include <iostream>
using namespace std;

int seleciona(int num1, int num2, char opcaoAB, int soma, int subtracao){
	if (opcaoAB == 'A'){
		soma = num1 + num2;
	}else{
		subtracao = num1 - num2;
	}
}

int main(void){
	int num1; int num2; int soma; int subtracao;
	char opcaoAB;
	
	cout<<"digite um valor: "<<endl;
	cin>>num1;
	
	cout<<"digite outro valor: "<<endl;
	cin>>num2;
	
	cout<<"Agora digite a sua opcao, A(somar os valores) ou B(subtrair valores): "<<endl;
	cin>>opcaoAB;
	
	cout<<seleciona<<endl; // chama a funcao 'seleciona' que analisa a condicao e faz o calculo.
	return 0;
}
