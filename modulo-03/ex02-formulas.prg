#define PI 3.14159

FUNCTION Main()

    LOCAL cRaio := "", cA := "", cB := "", cPeso := "", cAltura := ""
    
    LOCAL nRaio := 0, nArea := 0
    LOCAL nA := 0, nB := 0, nHipotenusa := 0
    LOCAL nPeso := 0, nAltura := 0, nIMC := 0

    QOut("=== EXERCICIO 2: FORMULAS MATEMATICAS ===")

    // --- A) µrea do C¡rculo ---
    ACCEPT "Digite o raio do circulo: " TO cRaio
    nRaio := Val(cRaio)
    nArea := PI * (nRaio ^ 2) // O acento circunflexo ^ eleva ao quadrado
    QOut("-> Area do Circulo: " + AllTrim( Str(nArea, 10, 2)))
    QOut("")

    // --- B) Hipotenusa ---
    ACCEPT "Digite o valor do cateto A: " TO cA
    nA := Val(cA)
    ACCEPT "Digite o valor do cateto B: " TO cB
    nB := Val(cB)
    nHipotenusa := Sqrt( (nA ^ 2) + (nB ^ 2)) 
    QOut("-> Hipotenusa: " + AllTrim(Str(nHipotenusa, 10, 2)))
    QOut("")

    // --- C) IMC ---
    ACCEPT "Digite o seu peso (kg): " TO cPeso
    nPeso := Val(cPeso)
    ACCEPT "Digite a sua altura (m, ex: 1.75): " TO cAltura
    nAltura := Val(cAltura)
    nIMC := nPeso/(nAltura ^ 2)
    QOut( "-> Seu IMC: " + AllTrim( Str(nIMC, 10, 2)))
    

RETURN NIL