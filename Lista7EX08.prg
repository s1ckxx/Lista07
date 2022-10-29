// 8. Ler dois vetores A e B, de 20 elementos cada e calcular um terceiro,
// C, onde cada elemento será a soma dos correspondentes em A e B.
// Apresentar o vetor resultante.

Function Main()

        local aVetorA := array(20)
        local aVetorB := array(20)
        local aVetorC := array(20)
        local nRandom1 := 0
        local nRandom2 := 0
        local nI

        for nI := 1 to 20
            nRandom1 := hb_RandomInt(1, 20)
            nRandom2 := hb_RandomInt(20, 40)
            aVetorA[nI] = nRandom1
            aVetorB[nI] = nRandom2

            aVetorC[nI] = aVetorA[nI] + aVetorB[nI]

            QOut("O valor na posição [" + AllTrim(Str(nI)) + "]" + " do vetor C é: " + AllTrim(Str(aVetorC[nI])))
        end

return nil