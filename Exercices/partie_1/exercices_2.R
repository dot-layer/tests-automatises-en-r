library(testthat)

vecteur_1 <- 1:5
vecteur_2 <- c(1, 4, 9, -2, -1, 4:9)
vecteur_3 <- c(1, 4, 9, -2, 1)
vecteur_4 <- c(1, 4, 9, NA, -1)

# Exercices ---------------------------------------------------------------

# À partir de votre moyenne_geo de l'exercice précédent, transformer les 
# tests en expression test_that.

valeur_attendue_vecteur_1 <- 2.605171
valeur_attendue_vecteur_2 <- 4.013658
valeur_attendue_vecteur_3 <- -2.352158
valeur_attendue_vecteur_4 <- -2.449490
