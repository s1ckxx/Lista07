// 17.Ler uma matriz A do tipo vetor com 10 elementos. Construir uma
// matriz B de mesmo tipo, sendo que cada elemento de B seja o
// somatório do primeiro até o elemento correspondente de A.
// Apresentar os elementos da matriz B.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(10)
        local aArrayB := array(10)
        local nI
        local nX := 1
        local nSoma := 0

        for nI := 1 to 10
                aArrayA[nI] := nI
        end

        for nI := 1 to 10
                nSoma := nSoma + aArrayA[nI]
                aArrayB[nI] := nSoma
        end

        ExibeVetor(aArrayB)

return nil