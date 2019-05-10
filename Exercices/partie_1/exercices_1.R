vecteur_1 <- 1:5
vecteur_2 <- c(1, 4, 9, -2, -1, 4:9)
vecteur_3 <- c(1, 4, 9, -2, 1)
vecteur_4 <- c(1, 4, 9, NA, -1)

n_1 <- length(vecteur_1)
prod(vecteur_1) ** (1 / n_1)

# Exercices ---------------------------------------------------------------

# Dans ce document, on vous fourni le script pour calculer la moyenne 
# géométrique. Tâches : 
# 1. Attribuez les valeurs de la moyenne géométrique à valeur_vecteur_1
#    et valeur_vecteur_2. 
# 2. Extraire le script dans une fonction moyenne_geo.
# 3. Exécuter les tests, et les deux premiers passent. 
# 4. On désire gérer les nombres négatifs. Codez la formule au tableau. 
#    Le test 3 passe.
# 5. On désire ignorer les NA. Utilisez un argument de la fonction mean 
#    pour ignorer les NA. Le test 4 passe. 

valeur_vecteur_1 <- NA
valeur_vecteur_2 <- NA

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_1), valeur_vecteur_1)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 1 a échoué')
        }   
        
    }
)

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_2), valeur_vecteur_2)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 2 a échoué')
        }   
    
    }
)

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_3), -2.352158, tolerance = 1e-5)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 3 a échoué')
        }   
        
    }
)

tryCatch(
    {
        comparaison <- all.equal(moyenne_geo(vecteur_4), 2.352158, tolerance = 1e-5)
        if(!isTRUE(comparaison)) {
            print('Le vecteur 4 a échoué')
        }   
        
    }
)
