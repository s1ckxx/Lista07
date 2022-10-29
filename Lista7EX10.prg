// 10.Ler dois vetores, A e B de 10 elementos cada um e calcular um vetor
// C onde seu primeiro elemento é o primeiro elemento de A, seu
// segundo elemento é o primeiro de B, seu terceiro elemento é o
// segundo de A, e assim sucessivamente. Notem que o vetor C deverá
// ter 20 elementos. Exibir o conteúdo do vetor C.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(10)
        local aArrayB := array(10)
        local aArrayC := array(20)
        local nRandom1 := 0
        local nRandom2 := 0
        local nI
        local nX := 1

        for nI := 1 to 10
            nRandom1 := hb_RandomInt(1, 20)
            nRandom2 := hb_RandomInt(20, 40)
            aArrayA[nI] = nRandom1
            aArrayB[nI] = nRandom2
        end

        nI := 1
        while nX <= 20
                aArrayC[nX] = aArrayA[nI]
                nX++
                aArrayC[nX] = aArrayB[nI]
                nX++
                nI++
        end

        ExibeVetor(aArrayC)

return nil