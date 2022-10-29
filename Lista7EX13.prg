// 13.Ler 8 elementos em uma matriz A tipo vetor. Construir uma matriz B
// de mesma dimensão onde cada elemento é o triplo do elemento
// correspondente da mátria A.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(8)
        local aArrayB := array(8)
        local nRandom := 0
        local nI

        for nI := 1 to 8
                nRandom := hb_RandomInt(1, 15)
                aArrayA[nI] = nRandom
                aArrayB[nI] = aArrayA[nI] * 3
        end

        ExibeVetor(aArrayA)
        ?
        ? "Exibindo matriz B com os valores da matriz A multiplicados por 3"
        ?
        ExibeVetor(aArrayB)

return nil