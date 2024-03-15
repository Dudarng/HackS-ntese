# Condições e Repetições no PowerShell 🔄

O PowerShell oferece recursos poderosos para controle de fluxo, incluindo estruturas de condição e repetição. Aqui está um resumo desses recursos:

### Estruturas de Condição:
- `if`, `elseif`, `else`: Usados para executar blocos de código com base em condições.
```powershell
if (condição) {
    # Código a ser executado se a condição for verdadeira
} elseif (outra condição) {
    # Código a ser executado se a primeira condição for falsa e essa for verdadeira
} else {
    # Código a ser executado se todas as condições anteriores forem falsas
}
```

- Operadores de comparação: `eq` (igual), `ne` (diferente), `gt` (maior que), `lt` (menor que), `ge` (maior ou igual), `le` (menor ou igual).
```powershell
if ($variavel -eq "valor") {
    # Código a ser executado se a variável for igual a "valor"
}
```

### Estruturas de Repetição:
- `for`: Executa um bloco de código um número específico de vezes.
```powershell
for ($i=0; $i -lt 5; $i++) {
    # Código a ser executado repetidamente
}
```

- `while`: Executa um bloco de código enquanto uma condição for verdadeira.
```powershell
while (condição) {
    # Código a ser executado enquanto a condição for verdadeira
}
```

- `do while`: Semelhante ao `while`, mas garante que o bloco de código seja executado pelo menos uma vez antes de verificar a condição.
```powershell
do {
    # Código a ser executado pelo menos uma vez
} while (condição)
```

- `foreach`: Itera sobre cada item em uma coleção (array, lista, etc.).
```powershell
foreach ($item in $colecao) {
    # Código a ser executado para cada item na coleção
}
```

Estas estruturas de controle de fluxo oferecem flexibilidade no desenvolvimento de scripts PowerShell, permitindo que você automatize tarefas de maneira eficiente e robusta.
