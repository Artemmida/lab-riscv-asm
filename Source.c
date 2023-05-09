#include <stdio.h>
#include <stdlib.h>

#define N 4
#define M 4

int sum_row(int* matrix, int  line)
{
	int sum = 0;
	for (int i = 0; i < N; i++)
	{
		sum+=matrix[M*(line-1)+i];
	}
	return sum;
}

int main()
{
	int matrix[M][N] = { 0 };
	for (int i = 0; i < M; i++)
	{
		for (int j = 0; j < N; j++)
		{
			matrix[i][j] = rand() % 10;
			printf("%d\t", matrix[i][j]);
		}
		printf("\n");
	}
	
	int line = 1;
	int sum = sum_row(&matrix[0][0], line);
	printf("\nSum of the row with number %d is %d \n", line, sum);
	return 0;
}
