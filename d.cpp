#include <iostream>
#include <conio.h>
#include <stdlib.h> 
#include <vector>
#include <mutex>
#include <time.h>


#include <thread>
int **ptr_matriz1,**ptr_matriz2 ,**matriz_resultante, filas1, columnas1 , filas, columnas,total;

/*		**puntero_matriz  -> * puntero_fila -> [int]	[int]
							 * puntero_fila -> [int]	[int]
							 * puntero_fila -> [int]	[int] ...			*/

using namespace std;

mutex io_mote;

void put_data() 
{
	//int **ptr_matriz,filas,columnas; // señala a una matriz
	cout << "\tCalculadora de Matrices\n ";
	//cout << "\t Ingresar Aletorios .\n";
	//cout<<"2\t Ingresar Manualmente"
	cout << "\tMatriz_1 \nNumero de filas =";
	cin >> filas;
	cout << "Numero de Columnas =";
	cin >> columnas;
	//---------------------------------------------------------------------------------------------
	ptr_matriz1 = new int*[filas]; //separa memoria para las filas
	for (int i = 0; i < filas; i++)
	{
		ptr_matriz1[i] = new int[columnas];//separa memoria para las columnas
	}
	cout << "\t\t...Digitando los elementos de la matriz1 "<<endl;// matriz1
	for (int i = 0; i < filas; i++)
	{
		for (int j = 0; j < columnas; j++)
		{
			int temp = 1 + rand() % 1000;
			cout << "Dato[" << i << "][" << j << "]:";
			*(*(ptr_matriz1 + i) + j) = temp;// puntero matriz [i][j]
			cout<< *(*(ptr_matriz1 + i) + j)<<endl;// puntero matriz [i][j]
		}
	}
	cout << endl;
	//---------------------------------------------------------------------------------------------------
	cout << "\tMatriz_2 \nNumero de filas =";
	cin >> filas1;
	cout << "Numero de Columnas =";
	cin >> columnas1;

	ptr_matriz2 = new int*[filas1]; //separa memoria para las filas
	for (int i = 0; i < filas1; i++)
	{
		ptr_matriz2[i] = new int[columnas1];//separa memoria para las columnas
	}
	cout << "\t\t...Digitando los elementos de la matriz2 " << endl;
	for (int i = 0; i < filas1; i++)
	{
		for (int j = 0; j < columnas1; j++)
		{
			int temp = 1 + rand() % 100;
			cout << "Dato[" << i << "][" << j << "]:";
			*(*(ptr_matriz2 + i) + j) = temp;// puntero matriz [i][j]
			cout << *(*(ptr_matriz2 + i) + j)<<endl;// puntero matriz [i][j]
		}
	}
	cout << endl;
}
void mostrar_matriz(int **ptr_matriz, int filas, int columnas)
{
	cout << "\nImprimiendo .....\n\n";
	int fi = 0;
	int co = 0;
	for (int i = 0; i < filas; i++)
	{
		for (int j = 0; j < columnas; j++)
		{
			cout << *(*(ptr_matriz + i) + j) <<"\t";
		}
		cout << endl;
	}
	for (int i = 0; i < filas; i++)
	{
		fi++; co = 0;
		for (int j = 0; j < columnas; j++)
		{
			co++;
		}
	}
}
void Sumar_Matrizes(int **mtrx1,int**mtrx2,int filas , int columnas)
{
	matriz_resultante = new int*[filas];
	for (int i = 0; i < filas; i++)
	{
		matriz_resultante[i] = new int[columnas];//separa memoria para las columnas
	}
	for (int i = 0; i < filas; i++)
	{
		for (int j = 0; j < columnas; j++)
		{
			*(*(matriz_resultante + i) + j) = *(*(ptr_matriz1 + i) + j) + *(*(ptr_matriz2 + i) + j);
		}
	}
	cout << "La matriz resultante es ...\n";
}

void Restar_Matrizes(int **mtrx1, int**mtrx2, int filas, int columnas)
{
	matriz_resultante = new int*[filas];
	for (int i = 0; i < filas; i++)
	{
		matriz_resultante[i] = new int[columnas];//separa memoria para las columnas
	}
	for (int i = 0; i < filas; i++)
	{
		for (int j = 0; j < columnas; j++)
		{
			*(*(matriz_resultante + i) + j) = *(*(ptr_matriz1 + i) + j) - *(*(ptr_matriz2 + i) + j);
		}
	}
	cout << "La matriz resultante es ...\n";
}

void Multiplicar_Matrizes(int **mtrx1, int**mtrx2, int filas, int columnas)
{
	matriz_resultante = new int*[filas];
	for (int i = 0; i < filas; i++)
	{
		matriz_resultante[i] = new int[columnas];//separa memoria para las columnas
	}
	for (int i = 0; i < filas; i++)
	{
		for (int j = 0; j < columnas; j++)
		{
			//int total=0 ;
			for (int k = 0; k < columnas; k++)
			{
				total += *(*(ptr_matriz1 + i) + k) * *(*(ptr_matriz2 + k) + j)	;
				//cout << total << " ";
			}
			//cout << "|";
			*(*(matriz_resultante + i) + j) = total;
			total = 0;	
		}
	}
	cout << "La matriz resultante es ...\n";
}
long Sumatoria(int **resultante ,int rango1,int rango2)
{
	//cout << "\nLa Dimension de su matriz dinamica es =";
	long suma = 0;
	//cout << fi << "*" << co <<endl;
	for (int i = 0; i < rango1; i++)
	{
		for (int j = 0; j < rango2; j++)
		{
			io_mote.lock();
			suma += (long)(*(*(matriz_resultante + i) + j));
			cout << "suma=" << suma << endl;
			io_mote.unlock();
		}
	}
	cout << "La Suma de" << rango1 << " a " << rango2<< "="<< suma << endl;
	return suma;
}

int main()
{
	
	srand(time(NULL));
	put_data(); cout << "Matriz1------------------------\n";
	mostrar_matriz(ptr_matriz1, filas, columnas); cout << "\nMatriz2---------------------------\n";
	mostrar_matriz(ptr_matriz2, filas1, columnas1); 
	//Sumar_Matrizes(ptr_matriz1, ptr_matriz2, filas, columnas);
	//Restar_Matrizes(ptr_matriz1, ptr_matriz2, filas, columnas);
	cout << "\nMultiplicacion\n\n";
	Multiplicar_Matrizes(ptr_matriz1, ptr_matriz2, filas, columnas);
	//mostrar_matriz(matriz_resultante, filas, columnas);
	//Sumatoria(matriz_resultante);
	int i = 0, num_thrds = thread::hardware_concurrency();
	cout << "Mi Laptop posee " << num_thrds << "nucleos\n";
	vector <thread> ths(num_thrds);
	int rango1, rango2;
	cout << "$ Elija la redimension de la Sumatoria\nRango1=";
	cin >> rango1;
	cout << "Rango2=";
	cin >> rango2;

	/*for (int i = 0; i < num_thrds; i++)
	{
		ths[i] = thread(Sumatoria, matriz_resultante,rango1,rango2);
	}
	for (int i = 0; i < num_thrds; i++)
	{
		ths[i].join();
	}*/
	system("pause");
}