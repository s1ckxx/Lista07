// 22.Ler 12 elementos de uma matriz tipo vetor, colocá-los em ordem
// crescente.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(12)
        local nRandom := 0
        local nI
        
        for nI := 1 to 12
                nRandom := hb_RandomInt(1, 12)
                aArrayA[nI] := nRandom
        end

        Asort(aArrayA,,,{ |x, y| y > x })
        ExibeVetor(aArrayA)

return nil

