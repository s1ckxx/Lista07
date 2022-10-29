// 1. Fazer um programa que dados um número de 1 até 7, apresente o
// nome do dia da semana correspondente. Considere 1 como
// “Domingo”. Utilize vetor.

function Main()

        local aDia := {"DOMINGO", "SEGUNDA", "TERÇA", "QUARTA", "QUINTA", "SEXTA", "SABADO"}
        local nOpcao := 0

        while nOpcao <= 0 .or. nOpcao > 7
            ACCEPT "Informe um número: " TO nOpcao
            nOpcao = Val(nOpcao)

            if nOpcao <= 0 .or. nOpcao > 7
                QOut("Escolha um número entre 1 e 7!")
            endif
        end

        QOut("O dia da semana correspondente ao número escolhido é: " + AllTrim(aDia[nOpcao]))

return nil