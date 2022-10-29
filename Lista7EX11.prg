// 11.Ler um vetor A de 15 elementos e a partir dele construir um vetor B
// de mesmo tamanho, sendo o inverso de A, ou seja, o primeiro
// elemento de B deverá receber o último de A o segundo de B deverá
// receber o penúltimo de A e assim por diante.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(15)
        local aArrayB := array(15)
        local nRandom := 0
        local nI 
        local nX := 1

        for nI := 1 to 15
                nRandom := hb_RandomInt(1, 20)
                aArrayA[nI] = nRandom
        end

        for nI := 15 to 1 step -1
                aArrayB[nX] = aArrayA[nI]
                nX++
        end

        ExibeVetor(aArrayB)

return nil