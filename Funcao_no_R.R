rm(list = ls(all = TRUE))

boletim <- function(x) {
  
  nomes <- as.character()
  nota1 <- as.numeric()
  nota2 <- as.numeric()
  nota3 <- as.numeric()
  media <- as.numeric()
  situacao <- as.character()
  
  alunos <- data.frame(nomes, nota1, nota2, nota3, media, situacao)
  alunos$nomes <- as.character(alunos$nomes)
  alunos$situacao <- as.character(alunos$situacao)
  
  typeof(alunos$nota1)
  
  k <-1  
  i <-1
  while(i != 0){
    
    cat('Dígite o nome do aluno: ')
    alunos[k,1] <- readline()
    
    cat('Dígite a primeira nota: ')
    alunos[k,2] <- as.numeric(readline())
    
    cat('Dígite a segunda nota: ')
    alunos[k,3] <- as.numeric(readline())
    
    cat('Dígite a terceira nota: ')
    alunos[k,4] <- as.numeric(readline())
    
    alunos$media[k] <- sprintf("%.2f", round(sum(alunos$nota1[k], alunos$nota2[k], alunos$nota3[k]) / 3), 2)
    
    
    if(alunos$media[k] >= 7){
      alunos$situacao[k] <- 'APROVADO'
    } else if(alunos$media[k] >=5 & alunos$media[k] < 7) {
      alunos$situacao[k] <- 'RECUPERAÇÃO'
    } else {
      alunos$situacao[k] <- 'REPROVADO'
    }
    
    
    k <- k + 1
    
    cat('Deseja continuar? [S/N]')
    r <- readline()
    if(r == "N" | r == 'n') {
      i <- 0
      print('FINALIZANDO')
    }
  }
  
  print('-------- Banco de dados --------- \n')
  return(alunos)
}

boletim(1)
