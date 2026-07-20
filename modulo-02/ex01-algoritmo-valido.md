# Exercício 1: Identificando Algoritmos Válidos

Nesse exercício, classifiquei cada uma das quatro situações com base nos três requisitos fundamentais de um algoritmo: ser **finito** (ter fim), **ordenado** (passos lógicos sequenciais) e **sem ambiguidade** (instruções totalmente claras).

Para deixar a entrega mais rica, registrei tanto o meu olhar humano quanto a realidade do computador exige.
---
---

### A) "Some dois números."
**Status:** Inválido 
* **O que pensei inicialmente:** "Parece válido, pois se alguém me der dois números, a tarefa é direta, ordenada e tem fim."
* **A perspectiva do computador:** O computador é uma máquina literal e não consegue "deduzir" o contexto. Para ele, faltam instruções essenciais de entrada e saída: de onde vêm esses números (teclado, variáveis)? Onde o resultado deve ser exibido ou guardado? Por ser incompleto e ambíguo para a máquina, ele é tecnicamente inválido.

### B) "Leia um número. Se for positivo, mostre 'positivo'. Senão, mostre 'negativo'."
**Status:** Válido 
* **Justificativa:** Cumpre todos os requisitos de forma clara. Tem uma entrada de dados definida ("Leia um número"), um processamento lógico sem ambiguidade (decisão baseada no valor) e uma saída explícita ("mostre...").

### C) "Fique repetindo até acabar."
**Status:** Inválido 
* **O que pensei inicialmente:** "Pode ser válido. Afinal, se em algum momento acabar, a instrução se torna finita."
* **A perspectiva do computador:** O termo "até acabar" é um exemplo claro de ambiguidade. Como o computador não sabe o que determina esse fim de forma matemática (ex: "até que o contador chegue a 10"), ele ficará repetindo a instrução para sempre. Por isso, creio ser inválido por ser infinito e ambíguo.

### D) "Pegue um ingrediente qualquer e cozinhe."
**Status:** Inválido 
* **Justificativa:** É ambíguo. O computador não possui inteligência intuitiva ou bom senso para escolher um "ingrediente qualquer" e nem sabe o que significa a instrução subjetiva "cozinhe".
