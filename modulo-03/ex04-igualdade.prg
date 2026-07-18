FUNCTION Main()
    LOCAL cTextoLongo := "Harbour"
    LOCAL cTextoCurto := "Harb"
    
    LOCAL lIgualdadeComum
    LOCAL lIgualdadeExata

    QOut("Palavra 1: " + cTextoLongo)
    QOut("Palavra 2: " + cTextoCurto)

    //TESTE 1: Usando apenas um sinal de igual (=)
    //o Harbour compara s¢ at‚ o tamanho da palavra da direita
    //como "Harbour" COME€A com "Harb", ele acha que ‚ igual
    lIgualdadeComum := (cTextoLongo = cTextoCurto)

    // TESTE 2: Usando dois sinais de igual (==)
    //o Harbour exige que tamanho e as letras sejam EXATAMENTE iguais.
    lIgualdadeExata := (cTextoLongo == cTextoCurto)

    QOut("Usando '=' (Igualdade Simples): " + iif(lIgualdadeComum, ".T. (Verdade)", ".F. (Falso)"))
    QOut("Usando '==' (Igualdade Exata):  " + iif(lIgualdadeExata, ".T. (Verdade)", ".F. (Falso)"))
    
    QOut("O '=' deu Verdadeiro porque 'Harbour' inicia com 'Harb'.")
    QOut("O '==' deu Falso porque os tamanhos sao diferentes.")

RETURN NIL