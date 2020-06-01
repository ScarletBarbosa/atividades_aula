#include <iostream>
#include <math.h>
using namespace std;

retorno(float num1, float num2, float num3, float quadradoSoma){
	quadradoSoma = round(((num1*num1)) + (num2 + num3));
}

int main(void){
	
	float num1;
	float num2;
	float num3;
	float quadradoSoma;
	
	cout<<"Digite o 1 valor: "<<endl;
	cin>>num1;
	
	cout<<"Digite o 2 valor: "<<endl;
	cin>>num2;
	
	cout<<"Digite o 3 valor: "<<endl;
	cin>>num3;	
	
	cout<<retorno<<endl;
	return 0;
}
