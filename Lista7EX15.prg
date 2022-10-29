// 15.Ler duas matrizes do tipo vetor. A com 10 elementos e B com 15
// elementos. Construir uma matriz C, sendo esta, a junção das duas
// outras matrizes. Desta forma, C deverá ter a capacidade de
// armazenar 25 elementos. Apresentar a matriz C.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(10)
        local aArrayB := array(15)
        local aArrayC := array(25)
        local nRandom1 := 0
        local nRandom2 := 0
        local nI
        local nX := 11

        for nI := 1 to 15
                if nI <= len(aArrayA)
                        nRandom1 := hb_RandomInt(1, 100)
                        nRandom2 := hb_RandomInt(1, 100)
                        aArrayA[nI] = nRandom1
                        aArrayB[nI] = nRandom2
                else
                        nRandom2 := hb_RandomInt(1, 100)
                        aArrayB[nI] = nRandom2
                end if
        end

        for nI := 1 to 10
                aArrayC[nI] = aArrayA[nI]
        end

        for nI := 1 to 15
                aArrayC[nX] = aArrayB[nI]
                nX++
        end
        

        ExibeVetor(aArrayA)
        ?
        ? "Exibindo vetor B"
        ?
        ExibeVetor(aArrayB)
        ?
        ? "Exibindo vetor C"
        ?
        ExibeVetor(aArrayC)

return nil