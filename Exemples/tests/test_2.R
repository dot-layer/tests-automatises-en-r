context("Tests de la fonction cor")

test_that(
    "Tester que la corrélation est 1 pour le même vecteur",
    {
        expected <- 1
        x <- rnorm(100)
        actual <- cor(x, x)
        expect_equal(expected, actual)
    }
)
