# Exercício 4: Refinamento Sucessivo - Caixa de Supermercado

Esse exercício aplica a técnica do refinamento sucessivo para detalhar a lógica de funcionamento de um sistema de caixa de supermercado. O problema exige que o sistema registre itens, calcule o subtotal, aplique um desconto de 5% caso o cliente possua o cartão fidelidade e exiba o total a pagar.

Abaixo, o fluxo está dividido em dois níveis de detalhamento:

---

### 📍 Nível 1: Visão Geral 

1. Registrar os itens da compra e somar os valores.
2. Aplicar desconto se o cliente tiver o cartão fidelidade.
3. Mostrar o valor total a pagar e finalizar o atendimento.

---

### 🔍 Nível 2: Detalhamento dos Passos

#### Passo 1: Registrar os itens da compra e somar os valores
* **1.1.** Iniciar a variável `Subtotal` com o valor `0`.
* **1.2.** Abrir um ciclo de repetição para passar os produtos.
* **1.3.** Para cada produto passado no leitor de código de barras:
  * Ler o preço do produto.
  * Somar esse preço ao valor acumulado na variável `Subtotal` (`Subtotal <- Subtotal + PrecoProduto`).
* **1.4.** Encerrar a repetição quando o operador do caixa pressionar o botão de finalizar compra.

#### Passo 2: Aplicar desconto se o cliente tiver o cartão fidelidade
* **2.1.** Perguntar ao cliente se ele possui o cartão fidelidade do mercado.
* **2.2.** Se a resposta for **SIM**:
  * Calcular o desconto de 5% sobre o valor acumulado (`ValorDesconto <- Subtotal * 0.05`).
* **2.3.** Se a resposta for **NÃO**:
  * Definir o valor de desconto como zero (`ValorDesconto <- 0`).

#### Passo 3: Mostrar o valor total a pagar e finalizar o atendimento
* **3.1.** Calcular o valor final subtraindo o desconto (`TotalPagar <- Subtotal - ValorDesconto`).
* **3.2.** Exibir o valor de `Subtotal`, o `ValorDesconto` e o `TotalPagar` na tela do caixa para o cliente.
* **3.3.** Imprimir a nota com a lista de itens comprados.
* **3.4.** Liberar o caixa para a próxima compra.