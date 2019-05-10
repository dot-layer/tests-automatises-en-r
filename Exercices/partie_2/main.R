library(testthat)


# Exercices ---------------------------------------------------------------

# Dans ce document, on présente une fonction qui calcule des moyennes. La
# fonction retourne les bonnes valeures pour un vecteur de longueur 
# positive

# 1. Écrire des tests dans le fichier test/test_main.R avec la fonction
#    calculer_moyennes
# 2. La fonction ne retourne pas la bonne valeur si elle inclut un NA. 
#    


calculer_moyennes <- function(x) {
    
# Arithmétique ------------------------------------------------------------

    valeur1 <- sum(x) / length(x)
        
# Géométrique -------------------------------------------------------------

    valeur2 <- (-1) ** (sum(x < 0)) * exp(mean(log(abs(x)), na.rm = TRUE))
    
# Harmonique --------------------------------------------------------------

    valeur3 <- length(x) / sum(1 / x)

# Moyenne quadratique -----------------------------------------------------

    valeur4 <- (sum(x) / length(x)) ** (1 / 2)
    
# trimean -----------------------------------------------------------------

    quantiles <- as.numeric(quantile(x, na.rm = TRUE))
    valeur5 <- (quantiles[2] + 2 * quantiles[3] + quantiles[4]) / 4
    
    c(valeur1, valeur2, valeur3, valeur4, valeur5)
}

test_file("Exercices/partie_2/tests/test_main.R")
# test_dir("Exercices/partie_2/tests/")
