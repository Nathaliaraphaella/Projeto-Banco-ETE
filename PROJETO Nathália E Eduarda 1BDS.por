//1B - DS - Projeto de Lógica de programação (Prof° Silvio)
//Alunas: Nathália Raphaella e Eduarda Lays

programa
{
//Biblioteca para sortear os números da conta	
	funcao inicio()
	{	
//Definir o teste lógico e declaração das variáveis
	logico menu = verdadeiro
  	cadeia nome
	inteiro opcao, numConta, agencia, depositoInicial
   	real valorDeposito, saqueCc, saqueCp, saldoCc = 0.0, saldoCp = 0.0
   	
//Estrutura de repetição indefinida (faça/enquanto)
	faca{
//Apresentação do menu do banco ETE
		escreva("............MENU............\n")
		escreva(".......1 - Criar conta......\n")
		escreva("......2 - Saque na CC.......\n")
		escreva(".....3 - Depósito na CC.....\n")
		escreva("......4 - Saque na CP.......\n")
		escreva("..5 - Transferência para CP.\n")
		escreva("......6 - Mostrar saldo.....\n")
		escreva(".........7 - Sair...........\n\n")
		leia(opcao)

//A escolha do usuário ieá ser desencadear uma sequência de códigos
//estrutura de condição (escolha/caso)

		escolha(opcao) {
//Caso a opção do usuário seja 1, a seguinte sequência será executada
			caso 1: 
				escreva("Nome do Titular: \n")
				leia(nome)
				escreva("\nBem vindo(a) " + nome + " ao Banco ETE\n")
				escreva("Sua agência é: \n")
				leia(agencia)
				escreva("Número da Conta: \n")
				leia(numConta)			
				escreva("Agência: \n")	
				escreva("Número da conta Corrente é: " + numConta + "-0\n")
				escreva("Número da conta Poupança é: " + numConta  + "-1" + "\n\n")
	      		escreva("Deseja realizar deposito inicial? 1 - SIM ; 2 - NÃO\n")
	     		leia(depositoInicial)
	     		

 				escolha(depositoInicial) {
//Neste caso: Salva o valor de deposito (saldoCc = saldoCc + valorDeposito), depois ela é esvaziada (valorDeposito = 0.0) 
//para evitar erros, e mostra o saldo. Seguindo a escolha do usuário (sim ou não)
		 			caso 1: 
		  			escreva("Qual o valor que deseja depositar? R$ ")
		 			leia(valorDeposito)
		 			saldoCc = saldoCc + valorDeposito
		 			valorDeposito = 0.0
		   			escreva("Seu saldo atual é de: R$ " + saldoCc + " reais\n")
					pare
		
					caso 2:
					escreva("Que pena, quem sabe na próxima! Escolha uma opção em nosso menu!\n")
					pare
				}
			pare

//No Caso 2 o usuário dirá quanto quer sacar, e a estrutura de condição simples (se/senao) fará a verificação se o saque pode ser efetuado
			caso 2:
				escreva("Qual valor que deseja sacar?(CC) \n")
	     		leia(saqueCc)
	     		se(saldoCc >= saqueCc){
					saldoCc = saldoCc - saqueCc
					saqueCc = 0.0
	     			
	     			escreva("Seu saldo atual é de: R$ " + saldoCc + " reais\n")
	     		}senao {
	     			escreva("Necessário saldo para saque entre contas! \n")
	     			}    		
	     	pare
           
//Caso seja a opção 3, o saldo atual é somado com o valor de depósito e mostra o saldo
			caso 3:
				escreva("Qual valor deseja depositar?(CC) \n")
				leia(valorDeposito)
		 		saldoCc = saldoCc + valorDeposito
		 		valorDeposito = 0.0
		   		escreva("Seu saldo atual é de: R$ " + saldoCc + " reais\n")				
			pare

//Na opção 4: assim como no caso 2, o saque só pode ser realizado se houver saldo na CP
//o valor do resgate da Conta Poupança é adicionado ao saldo da Conta Corrente			
			caso 4:  
				escreva("Qual valor que deseja sacar? (CP) \n")			
	     		leia(saqueCp)
	     		se(saldoCp >= saqueCp){
					saldoCp = saldoCp - saqueCp
					saldoCc = saldoCc + saqueCp
					saqueCp = 0.0
	     			escreva("Seu saldo atual é de: R$ " + saldoCp + " reais\n")
	     		}senao {
	     			escreva("Necessário saldo para saque entre contas! \n")
	     			}
			pare

//Caso 5: A estrutura de repetição verifica se há saldo na CC para saldo na CP  		
			caso 5:	
				escreva("Qual valor que deseja transferir? (CP) \n")
				leia(valorDeposito)
				se(saldoCc >= valorDeposito){
			 		saldoCp = saldoCp + valorDeposito
			 		valorDeposito = 0.0
			   		escreva("Seu saldo atual da CP é de: R$ " + saldoCp + " reais\n")
			   	}senao {
			   		escreva("Valor insuficiente na CC para transferir para CP\n")
			   		}
			pare

//Caso 6: mostrarará os saldos das contas		
			caso 6:
				escreva("Seu saldo da conta Corrente é de: " + saldoCc + "\n")
				escreva("Seu saldo da conta Poupança é de: " + saldoCp + "\n")
			pare

//Caso 7: redefine o valor do teste lógico finalizando o loop indefinido		
			caso 7:
				escreva("\nAté a próxima!!!\n")
     			menu = falso
			pare
			
			}
		
		}enquanto(menu == verdadeiro)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3912; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */