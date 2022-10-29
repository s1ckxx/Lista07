// 19.Carregar um vetor com 50 caracteres gerados aleatoriamente
// (randômicos). Serão válidos apenas caracteres que representem
// letras maiúsculas de “A” até “Z”. A carga do vetor deverá ser feita
// através de uma sub-rotina que é chamada automaticamente no
// programa principal. Os caracteres podem se repetir.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local aArrayA := array(50)
        local nRandom := 0

        CarregaVetor(aArrayA)

        ExibeVetor(aArrayA)

return nil

static function CarregaVetor(aArrayA)

        local nRandom := 0
        local nI

        for nI := 1 to 50
                nRandom := chr(hb_RandomInt(65, 90))
                aArrayA[nI] := nRandom
        end

return nil