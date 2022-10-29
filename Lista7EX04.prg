// 4. Dado um número de 1 até 12, apresentar o número de dias do mês
// correspondente. Se o número escolhido for 2 (fevereiro), considere 28
// dias. Usar vetor.

Function Main()

        local aMesesDoAno := {"Janeiro", "Fevereiro", "Março", "Abril", ;
            "Maio", "Junho", "Julho", "Agosto", "Setembro", ;
            "Outubro", "Novembro", "Dezembro"}
        local nMes := 0

        while .T.
            ACCEPT "Informe o mês desejado para saber o número de dias do mesmo: " TO nMes
            nMes = Val(nMes)

            if (nMes <= 0) .or. (nMes > 12)
                QOUT("Por favor, informe um mês valido representado-o em números!")
            else
                exit
            end if
        end do

        if (nMes == 2)
            QOUT("O mês informado foi fevereiro e possui 28 dias!")
        elseif (nMes == 1) .or. (nMes == 3) .or. (nMes == 5) .or. ;
                (nMes == 7) .or. (nMes == 8) .or. (nMes == 10) .or. ;
                (nMes == 12)
                QOUT("O mês informado foi " + aMesesDoAno[nMes] + " e possui 31 dias!")
        else
            QOUT("O mês informado foi " + aMesesDoAno[nMes] + " e possui 30 dias!")
        end if

return nil