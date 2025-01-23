programa
{
    inclua biblioteca Util --> u
    inclua biblioteca Matematica --> m

    inteiro distancia
    inteiro linha_Navio, coluna_Navio
    inteiro linhaT, colunaT
    inteiro tentativas = 5
    logico navioAfundado = falso
    logico acerto_proximo = falso
// feito por pedro coenga
    funcao inicio()
    {      
        linha_Navio =  u.sorteia (1, 5)
        coluna_Navio = u.sorteia(1, 5)

       
        enquanto (tentativas > 0 e nao navioAfundado)
        {
             limpa()
            escreva("Tentativas restantes: ", tentativas, "\n")
            escreva("Digite a linha do tiro (1-5): ")
            leia(linhaT)
            escreva("Digite a coluna do tiro (1-5): ")
            leia(colunaT)

            se (linhaT == linha_Navio e colunaT == coluna_Navio)
            {
                escreva("Acertou o navio! Você venceu!\n")
                navioAfundado = verdadeiro
            }
            senao
              {
                
                distancia = (linhaT - linha_Navio) + (colunaT - coluna_Navio)
                se (distancia == 1)
                {
                    escreva("Ondas fortes! (muito perto)\n")
                    acerto_proximo = verdadeiro
                }
                senao
                {
                    escreva("Águas calmas! (longe)\n")
                    acerto_proximo = falso
                }
                tentativas--
                escreva("Tentativas restantes: ", tentativas, "\n")
               
                para (inteiro i = 1; i <= 5; i++)
                {
                    para (inteiro j = 1; j <= 5; j++)
                    {
                        se (i == linhaT e j == colunaT)
                        {
                            escreva(" X ")
                        }
                        senao
                        {
                            escreva(" ~ ")
                        }
                    }
                    escreva("\n")
                 } 
            }
        }
        se(acerto_proximo){
        	 escreva("Você está muito perto! Continue tentando!")
        	 } 
        	 senao{
        	 	escreva("Não desista! Você consegue!")
        }
    
        se (nao navioAfundado)
        {
            escreva("Suas tentativas acabaram! O navio estava em (", linha_Navio, ", ", coluna_Navio, ").\n")
        
        }
    }

               
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 291; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */