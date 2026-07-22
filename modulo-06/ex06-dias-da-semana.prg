FUNCTION Main()
    
    LOCAL aDias := {"Domingo", "Segunda-feira", "Terca-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sabado"}
    LOCAL cEntrada := ""
    LOCAL nDia := 0

    QOut("====  DIAS DA SEMANA ====")
    QOut("")

    //Leia um n£mero de 1 a 7
    ACCEPT "Digite um numero de 1 a 7 para saber o dia da semana: " TO cEntrada
    nDia := Val(cEntrada)

    //Valida se o n£mero est  no intervalo de 1 a 7
    IF nDia >= 1 .AND. nDia <= 7
        //Exibe o nome do dia correspondente usando o n£mero como ¡ndice
        QOut("-> O dia correspondente e: " + aDias [nDia])
    ELSE
        //Avisa o usu rio se o n£mero for inv lido
        QOut("-> ERRO: Numero invalido! Por favor, digite um valor entre 1 e 7.")
    ENDIF

RETURN NIL