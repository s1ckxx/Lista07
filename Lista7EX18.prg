// 18.Dada uma data informada pelo usuário, indicar ordinalmente o dia do
// ano que ela representa do 1o dia ao 365o/366o (conforme o ano for
// ou não bissexto). O usuário informará separadamente dos valores do
// dia, do mês e do ano pesquisado.

SET PROCEDURE TO Lista7EX09_lib.prg

function Main()

        local dDia := ""
        local dMes := ""
        local dAno := ""
        local dData := ""
        Set( _SET_DATEFORMAT, 'dd/mm/yyyy' )
        
        while len(dDia) <> 2 .or. len(dMes) <> 2 .or. len(dAno) <> 4 
                ACCEPT "Informe o dia: " TO dDia
                ACCEPT "Informe o mês: " TO dMes
                ACCEPT "Informe o ano: " TO dAno

                if len(dDia) <> 2 .or. len(dMes) <> 2 .or. len(dAno) <> 4 
                        QOut("Por favor insira valores válidos para data (dd/mm/aaaa)!")
                end if
        end

        dDia := dDia + "/"
        dMes := dMes + "/"

        dData := dDia + dMes + dAno
        dData := CToD(dData)

        QOUT("Este e o " + AllTrim(Str(DoY(dData))) + "º dia do ano!")

return nil