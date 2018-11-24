#include <stdio.h>

void main()
{
  int a[3][3], b[3][3], c[3][3];
  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
       printf("Enter a[%d][%d] element: ", i, j);
       scanf("%d", &a[i][j]);
    }
  }
  printf("\n");
  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
       printf("Enter b[%d][%d] element: ", i, j );
       scanf("%d", &b[i][j]);
    }
  }
  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
    {
      c[i][j] = 0;
      for(int k=0;k<3;k++)
        c[i][j] = c[i][j] + a[i][k] * b[k][j];
    }
  }
  printf("\n");
  for(int i=0;i<3;i++)
  {
    for(int j=0;j<3;j++)
        printf("%d ", c[i][j]);
    printf("\n");
  }
}
