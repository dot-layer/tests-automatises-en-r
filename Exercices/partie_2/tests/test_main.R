context(desc = "Tester calculer_moyennes pour les valeurs positives")

test_that(
  "Pour un vecteur la même valeur, toutes les moyennes pareils", 
  {
    actual <- calculer_moyennes(rep(1, 100))
    expected <- rep(1, 5)
    expect_identical(actual, expected)
  }
)


context(desc = "Tester des erreurs")
# Par exemple, un vecteur vide

test_that("Tester que calculer_moyennes avec vecteur vide retourne un erreur", 
          {
            expect_error(calculer_moyennes(c()))
          })

context(desc = "Tester calculer_moyennes en présence de NA")

test_that(
  "Pour un vecteur avec un NA, retourner la bonne moyenne", 
  {
    actual <- calculer_moyennes(c(1, 2, NA))[1]
    expected <- 1.5
    expect_equal(actual, expected)
  }
)

context(desc = "Tester la relation entre les moyennes")

test_that(
  "Pour deux valeurs, l'identité est respectée", 
  {
    moyennes <- calculer_moyennes(c(1, 2))
    A <- moyennes[1]
    G <- moyennes[2]
    H <- moyennes[3]
    
    expected <- G ** 2 / A
    
    expect_equal(expected, H)
    
    moyennes <- calculer_moyennes(c(10, 100))
    A <- moyennes[1]
    G <- moyennes[2]
    H <- moyennes[3]
    
    expected <- G ** 2 / A
    
    expect_equal(expected, H)
  }
)

test_that(
  "Pour trois valeurs, l'identité est respectée", 
  {
    moyennes <- calculer_moyennes(c(1, 2))
    A <- moyennes[1]
    G <- moyennes[2]
    H <- moyennes[3]
    
    expected <- G ** 2 / A
    
    expect_equal(expected, H)
    
  }
)

