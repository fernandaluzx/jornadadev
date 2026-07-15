# Exercício 2: Pseudocódigo
Neste exercício, estruturei a lógica de três problemas simples utilizando o conceito de **Entrada, Processamento e Saída**.

Para a construção das respostas, utilizei as instruções básicas padrão: `Leia` (entrada), `Escreva` (saída), `Se/Senão` (decisão) e `<-` (atribuição)

---

### A) Calcular a área de um retângulo (base x altura) [cite: 21]

* **Entrada:** Solicita os valores da base e da altura do retângulo.
* **Processamento:** Realiza o cálculo matemático da área.
* **Saída:** Exibe o resultado final da área calculada.

    Algoritmo Calcular Area -
        Declare base, altura, area como Numérico

        Início
            Leia base
            Leia altura
            area <- base * altura
            Escreva "A área do retângulo é: " + area
        Fim

---

### B) Verificar se um número é par ou ímpar

* **Entrada:** Solicita que o usuário informe um número inteiro.
* **Processamento:** Calcula o resto da divisão do número por 2 (utilizando o operador `%`). Se o resto for 0, o número é par; caso contrário, é ímpar.
* **Saída:** Exibe se o número digitado é par ou ímpar.

    Algoritmo Par Ou Impar -
        Declare numero, resto como Numérico

        Início
            Leia numero
            resto <- numero % 2
            
            Se resto = 0 
            Então escreva "O número digitado é: PAR"
            Senão escreva "O número digitado é: ÍMPAR"
            FimSe
        Fim

---

### C) Encontrar o maior entre três números 

* **Entrada:** Solicita que o usuário insira três números distintos.
* **Processamento:** Compara os três valores para identificar de forma lógica qual deles é o maior.
* **Saída:** Exibe o maior número encontrado.

    Algoritmo Maior De Tres -
        Declare n1, n2, n3, maior como Numérico

        Início
            Leia n1
            Leia n2
            Leia n3

            Se n1 > n2 E n1 > n3 
            Então maior <- n1
        
            Senão Se n2 > n3 
            Então maior <- n2

            Senão 
                maior <- n3
            FimSe

            Escreva "O maior número é: " + maior
        Fim