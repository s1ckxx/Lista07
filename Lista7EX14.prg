// 14.Ler duas matrizes A e B do tipo vetor com 20 elementos. Construir
// uma matriz C, onde cada elemento de C é a subtração do elemento

// correspondente de A com B. Apresentar a matriz C.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(20)
        local aArrayB := array(20)
        local aArrayC := array(20)
        local nRandom1 := 0
        local nRadom2 := 0
        local nI

        for nI := 1 to 20
                nRandom1 := hb_RandomInt(15, 30)
                nRadom2 := hb_RandomInt(1, 15)
                aArrayA[nI] = nRandom1
                aArrayB[nI] = nRadom2
                aArrayC[nI] = aArrayA[nI] - aArrayB[nI]
        end

        ExibeVetor(aArrayA)
        ?
        ? "Exibindo vetor B"
        ?
        ExibeVetor(aArrayB)
        ?
        ? "Exibindo matriz C sendo A - B"
        ?
        ExibeVetor(aArrayC)

return nil