// 20.Alterar o programa anterior de modo a incluir 4 menus que terão as
// seguintes finalidades:
// a. Listar o conteúdo completo do vetor.
// b. Solicitar ao usuário um caractere, a ser pesquisado no vetor e
// informar se o caractere pesquisado existe ou não no vetor
// informando a posição em que ele está (todas as ocorrências
// visto que o caractere pode se repetir).
// c. Pesquisar se existe no vetor um caractere informado pelo
// usuário e informar qual a posição da última ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).
// d. Pesquisar se existe no vetor um caractere informado pelo
// usuário e informar qual a posição da primeira ocorrência desse
// caractere (visto que um mesmo caractere poderá se repetir).

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(50)
        local nOpcao := 0
        
        CarregaVetor(aArrayA)
        nOpCao := CarregaMenu()

        if nOpcao == 1
                ExibeVetor(aArrayA)
        elseif nOpcao == 2
                PesquisaCaracterePosicao(aArrayA)
        elseif nOpcao == 3
                PesquisaCaractereUltima(aArrayA)
        else
                PesquisaCaracterePrimeira(aArrayA)
        end if



return nil

static function CarregaVetor(aArrayA)

        local nRandom := 0
        local nI

        for nI := 1 to 50
                nRandom := chr(hb_RandomInt(65, 90))
                aArrayA[nI] := nRandom
        end

return nil

static function CarregaMenu()

        local nOpcao := 0

        while nOpcao < 1 .or. nOpcao > 4
                ? "********************************** MENU **********************************"
                ? "1. Listar o conteúdo completo do vetor"
                ? "2. Localizar caractere e exibir sua posicao no vetor. (Pode existir mais que um)"
                ? "3. Pesquisar caractere e exibir posicao da sua ultima ocorrencia no vetor."
                ? "4. Pesquisar caractere e exibir posicao da sua primeira ocorrencia no vetor."
                ACCEPT "**************************************************************************" + chr(10) TO nOpcao
                nOpcao := val(nOpcao)

                if nOpcao < 1 .or. nOpcao > 4
                        QOut("Por favor escolha uma opcao válida!")
                end if
        end

return nOpcao

static function PesquisaCaracterePrimeira(aArrayA)

        local nI
        local nPosicao := 0
        local cCaractere := ""

        while len(cCaractere) <> 1
                ACCEPT "Informe um caractere para ser pesquisado no vetor: " TO cCaractere
        end

        cCaractere = Upper(cCaractere)

        for nI := 1 to len(aArrayA)
                if cCaractere == aArrayA[nI]
                        nPosicao = nI
                        exit
                end if
        end

        if nPosicao == 0
                QOut("Caractere não encontrado no vetor!")
        else
                QOut("Caractere encontrado na posição: " + AllTrim(Str(nI)))
        end if

return nil

static function PesquisaCaractereUltima(aArrayA)

        local nI
        local nPosicao := 0
        local cCaractere := ""

        while len(cCaractere) <> 1
                ACCEPT "Informe um caractere para ser pesquisado no vetor: " TO cCaractere
        end

        cCaractere = Upper(cCaractere)

        for nI := 1 to len(aArrayA)
                if cCaractere == aArrayA[nI]
                        nPosicao = nI
                end if
        end

        if nPosicao == 0
                QOut("Caractere não encontrado no vetor!")
        else
                QOut("Caractere encontrado na posição: " + AllTrim(Str(nI)))
        end if

return nil

static function PesquisaCaracterePosicao(aArrayA)

        local nI
        local nExiste := 0
        local cCaractere := ""

        while len(cCaractere) <> 1
                ACCEPT "Informe um caractere para ser pesquisado no vetor: " TO cCaractere
        end

        cCaractere = Upper(cCaractere)

        for nI := 1 to len(aArrayA)
                if cCaractere == aArrayA[nI]
                        QOut("Caractere encontrado na posição: " + AllTrim(Str(nI)))
                        nExiste++
                end if
        end

        if nExiste == 0
                QOut("Caractere não encontrado no vetor!")
        end if

return nil
