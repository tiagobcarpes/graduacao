//Escreva um algoritmo que leia uma matriz M(5x5) e crie dois vetores que contenham respectivamente
//as somas das linhas e das colunas de M. Escreva a matriz e os vetores criados.

Program alg16;
Uses Crt;
Var M: array[1..5,1..5] of integer;
		A, B: array[1..5] of integer;
		i, j, soma: integer;

Begin
  ClrScr;
  write('Insira os números da matriz.');
  for i:=1 to 5 do
  	Begin
  	  soma:=0;
  		for j:=1 to 5 do
  			Begin
  				gotoxy(j*3+5,i+2);
  				readln(M[i,j]);
  				soma:=soma+M[i,j];
  			End;
  		A[i]:=soma;
  	End;
    for i:=1 to 5 do
  	    Begin
  	      soma:=0;
  		    for j:=1 to 5 do
  		        soma:=soma+M[j,i];
  		    B[i]:=soma;
  	    End;
  ClrScr;
  write('Matriz formada:');
  for i:=1 to 5 do
  	for j:=1 to 5 do
  		Begin
  			gotoxy(j*3+5,i+2);
  			write(M[i,j]);
  		End;
  gotoxy(1,9);
  write('Vetor A (Soma das linhas): ');
  for i:=1 to 5 do
	  write(A[i],' ');
  gotoxy(1,10);
  write('Vetor B (Soma das colunas): ');
  for i:=1 to 5 do
	  write(B[i],' ');
End.
