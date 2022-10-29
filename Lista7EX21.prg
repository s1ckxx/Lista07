// 21.Carregar um vetor com 12 caracteres gerados aleatoriamente
// (randômicos). Serão válidos apenas caracteres que representem
// letras minúsculas de “a” até “z”. A carga do vetor deverá ser feita
// através de uma sub-rotina que é chamada automaticamente no

// programa principal. Os caracteres NÃO podem se repetir. Exibir no
// final o vetor gerado. A exibição deverá ser feita via uma sub-rotina.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(12)
        
        CarregaVetor(aArrayA)
        ExibeVetor(aArrayA)

return nil

static function CarregaVetor(aArrayA)

        local nRandom := 0
        local nI
        local nX := 1
        local nExiste := 0

        while nX <= 12
                nRandom := chr(hb_RandomInt(97, 122))
                nExiste := 0
                for nI := 1 to nX
                        if (nRandom == aArrayA[nI])
                                nExiste++
                        end if
                end

                if (nExiste == 1)
                        loop
                else
                        aArrayA[nX] = nRandom
                        nX++
                end if
        end

return nil