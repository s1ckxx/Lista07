// 7. Elaborar um programa que popule um vetor de 10 posições com
// valores pares a partir de 2 até o 20. Exibir o conteúdo do vetor.

Function Main()

        local aVetor := array(10)
        local nRandom := 1
        local nI

        for nI := 1 to 10
            while Mod(nRandom, 2) <> 0
                nRandom = hb_RandomInt(2, 20)
            end

            aVetor[nI] = nRandom
            nRandom = 1

            QOut("O valor na posição [" + AllTrim(Str(nI)) + "]" + " do vetor é: " + AllTrim(Str(aVetor[nI])))
        end

return nil