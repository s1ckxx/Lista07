// 23.Fazer um programa que trate de um vetor de 8 elementos numéricos.
// Ele deverá apresentar um menu que permitirá as seguintes
// operações: a. Carregar o vetor através da leitura dos valores.
// b. Exibir o conteúdo do vetor.
// c. Classificar os valores em ordem crescente. Caso o vetor esteja
// vazio, informar.
// d. Classificar os valores em ordem decrescente. Caso o vetor
// esteja vazio, informar.
// e. Pesquisar a existência de um valor no vetor. Caso o vetor esteja
// vazio, informar.
// f. Informar o somatório dos valores do vetor.
// g. Informar a média dos valores do vetor.
// h. Informar o maior e o menor valor do vetor.
// i. Embaralhar o conteúdo do vetor.
// j. Informar os valores que se repetem e a quantidade de
// repetições.

REQUEST HB_GT_WIN_DEFAULT

function Main()

        local aArrayA := {}
        local nOpcao := 0
        local lBol := .T.

        while lBol == .T.

                nOpcao := 0
                nOpcao = CarregaMenu()

                if nOpcao == 1
                        lBol := CarregaVetor(aArrayA)
                elseif nOpcao == 2
                        lBol := ExibeVetor(aArrayA)
                elseif nOpcao == 3
                        lBol := VetOrdemCrescente(aArrayA)
                elseif nOpcao == 4
                        lBol := VetOrdemDecrescente(aArrayA)
                elseif nOpcao == 5
                        lBol := PesquisaVetor(aArrayA)
                elseif nOpcao == 6
                        lBol := SomatorioVetor(aArrayA)
                elseif nOpcao == 7
                        lBol := MediaVetor(aArrayA)
                elseif nOpcao == 8
                        lBol := VetMaiorMenor(aArrayA)
                elseif nOpcao == 9
                        lBol := EmbaralharVetor(aArrayA)
                elseif nOpcao == 10
                        lBol := ValoresRepetidos(aArrayA)
                end if
        end if

return nil

static function ValoresRepetidos(aArrayA)

        local lBol := .T.
        local nI, nX
        local nVal := 0
        local nQtdRepeticoes := 0
        local aRepetidos := {}

        for nI := 1 to len(aArrayA)
                nVal := aArrayA[nI]
                for nX := 1 to len(aArrayA)
                        if nVal == aArrayA[nX]
                                nQtdRepeticoes++
                        end if
                end

                if nQtdRepeticoes > 1
                        QOut("O valor " + AllTrim(Str(nVal)) + " foi repetido " + AllTrim(Str(nQtdRepeticoes)) + " vezes no vetor!")
                        nQtdRepeticoes := 0
                end if
        end

return lBol

static function EmbaralharVetor(aArrayA)

        local nAux := 0
        local nIndice := 1
        local nI
        local lBol := .T.

        if len(aArrayA) == 0
                QOut("O vetor esta vazio! Por favor carregue o mesmo!")
        else
                for nI := 1 to len(aArrayA)
                        nIndice := hb_RandomInt(1, len(aArrayA))
                        nAux := aArrayA[nI]
                        aArrayA[nI] := aArrayA[nIndice]
                        aArrayA[nIndice] := nAux
                end

                lBol := ExibeVetor(aArrayA)
        end if

return lBol

static function VetMaiorMenor(aArrayA)

        local nI
        local nMaior := 0
        local nMenor := 0
        local lBol := .T.

        if len(aArrayA) == 0
                QOut("O vetor esta vazio! Por favor carregue o mesmo!")
        else

                for nI := 1 to len(aArrayA)
                        if aArrayA[nI] > nMaior
                                nMaior = aArrayA[nI]
                        end if
                end

                nMenor = nMaior

                for nI := 1 to len(aArrayA)
                        if aArrayA[nI] < nMenor
                                nMenor = aArrayA[nI]
                        end if
                end

                QOut("O maior valor do vetor é: " + AllTrim(Str(nMaior)))
                QOut("O menor valor do vetor é: " + AllTrim(Str(nMenor)))
        end if

        ?
        wait("Pressione ESC para encerrar ou qualquer outra tecla para retornar ao menu principal!")
        ?
        if Lastkey() == 27
                lBol := .F.
        end if

return lBol

static function MediaVetor(aArrayA)

        local nI
        local nMedia := 0
        local lBol := .T.

        if len(aArrayA) == 0
                QOut("O vetor esta vazio! Por favor carregue o mesmo!")
        else

                for nI := 1 to len(aArrayA)
                        nMedia := nMedia + aArrayA[nI]
                end

                nMedia = nMedia / len(aArrayA)

                QOut("O somatório dos valores do vetor é: " + AllTrim(Str(nMedia)))
        end if

        ?
        wait("Pressione ESC para encerrar ou qualquer outra tecla para retornar ao menu principal!")
        ?
        if Lastkey() == 27
                lBol := .F.
        end if

return lBol

static function SomatorioVetor(aArrayA)

        local nI
        local nTotal := 0
        local lBol := .T.

        if len(aArrayA) == 0
                QOut("O vetor esta vazio! Por favor carregue o mesmo!")
        else

                for nI := 1 to len(aArrayA)
                        nTotal := nTotal + aArrayA[nI]
                end

                QOut("O somatório dos valores do vetor é: " + AllTrim(Str(nTotal)))
        end if

        ?
        wait("Pressione ESC para encerrar ou qualquer outra tecla para retornar ao menu principal!")
        ?
        if Lastkey() == 27
                lBol := .F.
        end if

return lBol

static function PesquisaVetor(aArrayA)

        local nI
        local nExiste := 0
        local nVal := 0
        local lBol := .T.

        if len(aArrayA) == 0
                QOut("O vetor esta vazio! Por favor carregue o mesmo!")
        else

                ACCEPT "Informe um valor para ser pesquisado no vetor: " TO nVal
                nVal := Val(nVal)

                for nI := 1 to len(aArrayA)
                        if nVal == aArrayA[nI]
                                QOut("Caractere encontrado na posição: " + AllTrim(Str(nI)))
                                nExiste++
                        end if
                end
        
                if nExiste == 0
                        QOut("Caractere não encontrado no vetor!")
                end if
        end if

        ?
        wait("Pressione ESC para encerrar ou qualquer outra tecla para retornar ao menu principal!")
        ?
        if Lastkey() == 27
                lBol := .F.
        end if

return lBol

static function CarregaVetor(aArrayA)

        local nI
        local nVal := 0
        local lBol := .T.

        for nI := 1 to 8
                ACCEPT "Informe valor " + AllTrim(Str(nI)) + ": " TO nVal
                nVal := Val(nVal)
                aAdd(aArrayA, nVal)
        end if
        ?
        wait("Pressione ESC para encerrar ou qualquer outra tecla para retornar ao menu principal!")
        ?
        if Lastkey() == 27
                lBol := .F.
        end if

return lBol

static function CarregaMenu()

        local nOpcao := 0

        while nOpcao < 1 .or. nOpcao > 10
                ? "********************************** MENU **********************************"
                ? "1. Carregar vetor"
                ? "2. Exibir conteudo do vetor"
                ? "3. Ordenar vetor em ordem crescente"
                ? "4. Ordenar vetor em ordem decrescente"
                ? "5. Pesquisar valor no vetor"
                ? "6. Somatório dos valores do vetor"
                ? "7. Media dos valores do vetor"
                ? "8. Maior e o menor valor do vetor"
                ? "9. Embaralhar vetor"
                ? "10. Valores que se repetem e a quantidade de repeticoes"
                ACCEPT "**************************************************************************" + chr(10) TO nOpcao
                nOpcao := val(nOpcao)

                if nOpcao < 1 .or. nOpcao > 10
                        QOut("Por favor escolha uma opcao válida!")
                end if
        end

return nOpcao

static function VetOrdemCrescente(aArrayA)

        local lBol := .T.

        if len(aArrayA) == 0
                QOut("O vetor esta vazio! Por favor carregue o mesmo!")
        else

                Asort(aArrayA,,,{ |x, y| y > x })
                lBol := ExibeVetor(aArrayA)
        end if

return lBol

static function VetOrdemDecrescente(aArrayA)

        local lBol := .T.

        if len(aArrayA) == 0
                QOut("O vetor esta vazio! Por favor carregue o mesmo!")
        else
                Asort(aArrayA,,,{ |x, y| x > y })
                lBol := ExibeVetor(aArrayA)
        end if

        ?
        wait("Pressione ESC para encerrar ou qualquer outra tecla para retornar ao menu principal!")
        ?
        if Lastkey() == 27
                lBol := .F.
        end if

return lBol

static function ExibeVetor(aArray)

        local nI := 1
        local lBol := .T.

        if len(aArray) == 0
            QOut("O vetor está vazio, por favor preencha-o!")

        elseif IsAlpha(aArray[nI])

            for nI := 1 to len(aArray)
                QOut("O elemento na posição [" + AllTrim(Str(nI)) + "] do vetor é: " + AllTrim(aArray[nI]))
            end

        else

            for nI := 1 to len(aArray)
                QOut("O elemento na posição [" + AllTrim(Str(nI)) + "] do vetor é: " + AllTrim(Str(aArray[nI])))
            end
            
        end if

        ?
        wait("Pressione ESC para encerrar ou qualquer outra tecla para retornar ao menu principal!")
        ?
        if Lastkey() == 27
                lBol := .F.
        end if

return lBol

