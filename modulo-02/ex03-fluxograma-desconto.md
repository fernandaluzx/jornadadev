# Exercício 3: Fluxograma de Desconto

Este exercício representa o fluxo lógico para calcular o desconto de 10% em compras acima de R$ 100.

O diagrama abaixo foi gerado automaticamente usando a tecnologia **Mermaid**, que renderiza o desenho diretamente do texto.

```mermaid
graph TD
    %% Define o início e fim com forma oval
    A([Início]) --> B
    H([Fim])
    
    %% Define entradas e saídas com forma de paralelogramo
    B[/Leia Valor/] --> C
    G[/Escreva Total/] --> H
    
    %% Define a decisão com forma de losango
    C{Valor > 100?}
    
    %% Define os processos com forma de retângulo
    C -- Sim --> D[Desconto = Valor * 0.10]
    C -- Não --> E[Desconto = 0]
    
    %% Une os fluxos e calcula o total
    D --> F
    E --> F
    F[Total = Valor - Desconto] --> G