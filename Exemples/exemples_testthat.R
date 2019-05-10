library(testthat)

# Les résultats attendus --------------------------------------------------

expect_equal(1, 1L)
expect_identical(1, 1L)

expect_equal(123400001, 123400000)
expect_equal(123400001, 123400000, scale = 1)
expect_equal(123400001, 123400000, scale = 123400000)

expect_match("J'ai hâte à R à Québec !", "Québec")
expect_match("J'ai hâte à R à Québec !", "123")

expect_error(mean())

ls("package:testthat", pattern = "^expect")



# Exécuter les tests ------------------------------------------------------

test_file("Exemples/tests/fichier_de_tests.R")
test_dir("Exemples/tests/")


test_file("Exemples/tests/fichier_de_tests.R", reporter = "summary")
test_file("Exemples/tests/fichier_de_tests.R", reporter = "minimal")
rapport_test <- test_file("Exemples/tests/fichier_de_tests.R", reporter = "silent")
rapport_test

# Plus d'information sur les tests ----------------------------------------

echouer_a_dix <- function(x) ifelse(x == 10, FALSE, TRUE)

test_that(
  "Boucler sur fonction, échec à l'itération 10", 
  {
    for(i in 1:15) {
      actual <- echouer_a_dix(i)
      info <- paste0("echouer_a_dix(", as.character(i), ") =", deparse(actual))
      expect_true(actual, info = info)
    }
  }
)
