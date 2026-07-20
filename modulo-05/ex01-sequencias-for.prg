FUNCTION Main()

    LOCAL nI := 0

    QOut("==== SEQUENCIAS COM FOR/NEXT ====")
    QOut("")

    //Imprima os n£meros de 1 a 100
    QOut("a) Sequencia de 1 a 100:")
    FOR nI := 1 TO 100
        // Usando QQOut para imprimir na mesma linha e economizar espa‡o na tela
        QQOut(AllTrim(Str(nI)) + " ")
    NEXT
    
    QOut("")
    QOut("")

    //Imprima os n£meros de -50 a 50 ---
    QOut("b) Sequencia de -50 a 50:")
    FOR nI := -50 TO 50
        QQOut(AllTrim(Str(nI)) + " ")
    NEXT
    
    QOut("")
    QOut("")

    //Imprima os n£meros de 80 a 5 em ordem decrescente ---
    //Para contar para tr s, o Harbour precisa do STEP -1 para saber que deve subtrair em vez de somar
    QOut("c) Sequencia de 80 a 5 (decrescente):")
    FOR nI := 80 TO 5 STEP -1
        QQOut(AllTrim(Str(nI)) + " ")
    NEXT

    QOut("")
    QOut("")


RETURN NIL