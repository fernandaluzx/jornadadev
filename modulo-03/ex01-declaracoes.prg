FUNCTION Main()

    //Declara‡Æo de vari veis com prefixos corretos
    LOCAL cNome     := "Fernanda Luz"
    LOCAL nSalario  := 2500.50        
    LOCAL lAtivo    := .T.              
    LOCAL dAdmissao 
    LOCAL cDepto    := "TOTVS03"        

    SET DATE BRITISH
    dAdmissao :=CToD("16/07/2026")
    
    QOut("=== DADOS DO FUNCIONARIO ===")
    QOut("Nome:         " + cNome)
    QOut("Salario Bruto: " + Str(nSalario, 10, 2))
    QOut("Ativo?        " + iif(lAtivo, "Sim", "Nao")) //Aprendi a usar o iif para substituir v rias linhas s¢ para trocar .T. por "Sim" e .F. por "NÆo!
    QOut("Admissao:     " + DToC(dAdmissao ))
    QOut("Codigo do Departamento: " + cDepto)

RETURN NIL