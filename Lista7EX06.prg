// 6. Elaborar um programa que popule um vetor de 30 posições com
// valores de 30 até 1. Exibir o conteúdo do vetor.

Function Main()

        local aVetor := array(30)
        local nRandom := 30
        local nI

        for nI := 1 to 30
            aVetor[nI] = nRandom
            nRandom--
            QOut("O valor na posição [" + AllTrim(Str(nI)) + "]" + " do vetor é: " + AllTrim(Str(aVetor[nI])))
        end

return nil