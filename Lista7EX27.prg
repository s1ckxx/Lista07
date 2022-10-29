// 27.Fazer um programa que apresente invertida uma palavra informada
// pelo usuário. Informar também se é ou não um palíndromo.

//REQUEST HB_GT_WIN_DEFAULT

function Main()

        local cPalavra := ""
        local aPalavraInvertida := {}
        local nI
        local cVerificaPalindromo := ""

        while cPalavra == ""
                ACCEPT "Digite uma palavra para que seja exibido seu primeiro caractere: " TO cPalavra

                if cPalavra == ""
                        QOut("Por favor informe uma palavra!")
                end
        end

        for nI := 0 to (len(cPalavra) -1)
                AAdd(aPalavraInvertida, Substr(cPalavra, (len(cPalavra) - nI), 1))
                
        end

        for nI := 1 to len(aPalavraInvertida)
                cVerificaPalindromo := cVerificaPalindromo + aPalavraInvertida[nI]
        end

        if (cVerificaPalindromo == cPalavra)
                QOut("A palavra '" + AllTrim(cPalavra) + "' é um palindromo!")
        else
                QOut("A palavra '" + AllTrim(cPalavra) + "' nao é um palindromo!" + chr(10) + "Seu inverso é: " + AllTrim(cVerificaPalindromo))
        end if

return nil