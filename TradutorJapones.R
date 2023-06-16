rm(list = ls(all = TRUE))

tradutor <- function(name){

  print("###################################################")
  print("######### TRADUTOR DE NOME PARA O JAPÔNES #########")
  print("###################################################")
  
  dic <- list(
    A <- ('a'), B <- ('bi'), C <- ('shi'),  D <- ('di'),  E <- ('e'),  F <- ('efu'),  G <- ('ji'),
    H <- ('eichi'),  I <- ('i'),  J <- ('jei'),  K <- ('kei'),  L <- ('eru'),  M <- ('emu'),
    N <- ('enu'),  O <- ('o'),  P <- ('pi'),  Q <- ('kyū'),  R <- ('āru'),  S <- ('esu'),
    T <- ('ti'),  U <- ('u'),  V <- ('vi'),  W <- ('daburyū'),  X <- ('ekkusu'),  Y <- ('wai'),
    Z <- ('zetto')
  )
  
  nickname <- strsplit(name, split = '')[[1]]
  nickname <- toupper(nickname)
  af <- (LETTERS)
  newname <- as.character()
  
  for(x in nickname){
    cont <- 1
    for(j in af) {
      if(j == x){
        newname <- paste(newname, dic[cont])
      } else {
        cont <- cont + 1
      }
    }
  }
  newname <- gsub("\\s+", "", newname)
  newname <- paste(toupper(substr(newname, 1, 1)), substring(newname, 2), sep = "")
  print('')
  cat('Seu nome em Japônes é: ', newname)
}

tradutor('Everton')
