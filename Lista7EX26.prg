// 26.Fazer um programa que dada uma palavra qualquer informada pelo
// usuário apresente na tela o seu primeiro caractere.

//REQUEST HB_GT_WIN_DEFAULT

function Main()

        local nPalavra := ""

        while nPalavra == ""
                ACCEPT "Digite uma palavra para que seja exibido seu primeiro caractere: " TO nPalavra

                if nPalavra == ""
                        QOut("Por favor informe uma palavra!")
                end
        end

        QOut("O primeiro caractere da palavra digitada é: " + AllTrim(Substr(nPalavra, 1, 1)))

return nil