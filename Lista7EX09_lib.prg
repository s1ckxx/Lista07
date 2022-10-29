// 9. Fazer uma função que apresente na tela todos os elementos de um
// vetor que será passado como parâmetro para a função. Este
// procedimento será útil para vários exercícios. Que tal colocá-lo numa
// biblioteca?

static function ExibeVetor(aArray)

        local nI := 1

        if len(aArray) == 0
            QOut("O vetor está vazio!")

        elseif IsAlpha(aArray[nI])

            for nI := 1 to len(aArray)
                QOut("O elemento na posição [" + AllTrim(Str(nI)) + "] do vetor é: " + AllTrim(aArray[nI]))
            end

        else

            for nI := 1 to len(aArray)
                QOut("O elemento na posição [" + AllTrim(Str(nI)) + "] do vetor é: " + AllTrim(Str(aArray[nI])))
            end
            
        end if

return nil