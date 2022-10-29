// 12.Fazer um programa que carregue um vetor de 8 elementos e que
// inverta a ordem do seu conteúdo. Apresente no final o vetor invertido.
// Usar apenas uma variável composta.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(8)
        local nAux := 0
        local nRandom := 0
        local nI
        local nX := 1

        for nI := 1 to 8
                nRandom := nI
                aArrayA[nI] = nRandom
        end

        for nI := 8 to 5 step -1
                nAux = aArrayA[nX]
                aArrayA[nX] = aArrayA[nI]
                aArrayA[nI] = nAux
                nX++
        end

        ExibeVetor(aArrayA)

return nil