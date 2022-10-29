// 16.Ler uma matriz A do tipo vetor com 5 elementos. Construir uma
// matriz B de mesmo tipo e dimensão, onde cada elemento da matriz
// B deverá ser o valor inverso (sinal trocado) do elemento
// correspondente da matriz A. Apresentar os elementos da matriz.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(5)
        local aArrayB := array(5)
        local nRandom1 := 0
        local nI

        for nI := 1 to 5
                nRandom1 := hb_RandomInt(-30, 30)
                aArrayA[nI] = nRandom1
                aArrayB[nI] = aArrayA[nI] * -1
        end

        ExibeVetor(aArrayA)
        ?
        ? "Exibindo vetor B"
        ?
        ExibeVetor(aArrayB)

return nil