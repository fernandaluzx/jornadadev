FUNCTION Main()
  
    LOCAL cSalario := ""
    LOCAL nSalario := 0
    LOCAL nReajuste := 0
    LOCAL nNovoSalario := 0

    QOut("=== REAJUSTE SALARIAL ===")

    ACCEPT "Digite o salario atual: R$ " TO cSalario
    nSalario := Val(cSalario) 

    IF nSalario < 1000
        nReajuste := 0.15
    ELSEIF nSalario <= 2000
        nReajuste := 0.12
    ELSEIF nSalario <= 4000
        nReajuste := 0.08
    ELSE
        nReajuste := 0.05
    ENDIF

    //Salario novo = Salario antigo + (Salario antigo * Porcentagem)
    nNovoSalario := nSalario + (nSalario * nReajuste)

    QOut("")
    QOut("-> Salario Atual: R$ " + AllTrim(Str(nSalario, 10, 2)))
    QOut("-> Taxa Aplicada:   " + AllTrim(Str(nReajuste * 100)) + "%")
    QOut("-> NOVO SALARIO: R$ " + AllTrim(Str(nNovoSalario, 10, 2)))
  
RETURN NIL