// 3. Ler 10 elementos de uma matriz tipo vetor e apresentá-los na ordem
// inversa em que foram lidos e armazenados.

function Main()

        local aVetor := array(10)
        local nElementos := ""
        local nI

        for nI := 1 to 10
            ACCEPT "Informe elemento " + AllTrim(Str(nI)) + ": " TO nElementos
            aVetor[nI] = nElementos
        end

        for nI := 10 to 1 step -1
            QOut("O elemento na posicao " + AllTrim(Str(nI)) + " é: " + AllTrim(aVetor[nI]))
        end

return nil