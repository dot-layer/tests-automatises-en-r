vecteur_1 <- 1:5
vecteur_2 <- c(1, 4, 9, -2, -1, 4:9)
vecteur_3 <- c(1, 4, 9, -2, 1)
vecteur_4 <- c(1, 4, 9, NA, -1)

# Exercices ---------------------------------------------------------------

# Dans ce document, on vous fournit le script pour calculer la moyenne
# géométrique. Sans utiliser testthat, compléter les exercices suivants.
#
# 1. Extraire la logique du calcul de la moyenne géométrique dans la 
#    fonction moyenne_geo.
# 2. Exécuter les tests. Les deux premiers passent.
# 3. On désire gérer les nombres négatifs. Coder la formule dans la 
#    diapositive. Le test 3 passe.
# 4. On désire ignorer les NA. Utiliser un argument de la fonction mean
#    pour ignorer les NA. Le test 4 passe.

valeur_vecteur_1 <- prod(vecteur_1)^(1 / length(vecteur_1))
valeur_vecteur_2 <- prod(vecteur_2)^(1 / length(vecteur_2))
valeur_vecteur_3 <- -2.352158
valeur_vecteur_4 <- -2.449490

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_1), valeur_vecteur_1, tolerance = 1e-5)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 1 a échoué')
        }
    }
)

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_2), valeur_vecteur_2, tolerance = 1e-5)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 2 a échoué')
        }
    }
)

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_3), valeur_vecteur_3, tolerance = 1e-5)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 3 a échoué')
        }
    }
)

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_4), valeur_vecteur_3, tolerance = 1e-5)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 4 a échoué')
        }
    }
)
