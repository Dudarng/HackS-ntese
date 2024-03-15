# Introdução a PowerShell 💻

O **PowerShell** é uma poderosa linguagem de script da Microsoft, com sua própria IDE conhecida como Windows PowerShell ISE, tornando a execução e compreensão do código mais simples. É bastante semelhante ao *bash*.

### Comandos para exibição de mensagens na tela 📢:
- `echo`
- `Write Host`
- `Write-Output`

Exemplo: 
```powershell
echo "Mensagem para exibir"
```

### Como criar scripts em PowerShell 📝
Você pode criar scripts utilizando o *Bloco de notas* (**notepad**), com o seguinte comando:
```powershell
notepad nomedoarquivo.ps1
```
onde `.ps1` é a extensão padrão do *PowerShell*. O arquivo será criado na área de trabalho.

Para executar o script, utilize:
```powershell
.\nomedoarquivo.ps1
```

Outras dicas úteis:
- `#` é usado para comentários no código.
- `get-location` ou `pwd` exibem o caminho atual.
- `whoami` mostra o usuário atual.
- `$nomedavariavel = "conteudodavarivel"` cria uma variável.
- `ping` envia pacotes para um endereço.
  - `-n` seguido de um número determina a quantidade de pacotes.
- `|` é usado para encadear comandos no terminal.
- `Select-String + "textoprocurado"` filtra a saída do terminal.
  - Exemplo: `ping -n 1 192.168.0.1 | Select-String "bytes-32"` retorna apenas as linhas contendo "bytes=32".
- `varivel.Line.split('parametro')[posição]` Seleciona somente uma parte da resposta da variavel.
  - Exemplo: `$resp.Line.split(' ')[2]` retorna apenas o conteúdo que está a partir do segundo espaço.   
- `param` é usado para criar parâmetros.
- `Read-host` recebe entrada do usuário.
  - Exemplo: `$ip = Read-host "Digite o IP: "` recebe um IP do usuário.
- `-replace "oqtirar","oqcolocar"` trocar um comando por outro.
- Concatenação de texto:
  `$(comando ou variável a ser exibido)` concatena o código no texto.
  - Exemplo: `echo "Meu diretório atual: $(get-location)"` mostra o texto junto com o conteúdo da variável ou comando.

### Manipulação de Erros com Try, Catch e Finally em PowerShell 💥

O PowerShell oferece uma maneira eficaz de lidar com erros durante a execução de scripts, utilizando os blocos `try`, `catch` e `finally`. Veja como utilizá-los:

- **`try`**: Este bloco é utilizado para envolver o código suscetível a erros. Quando ocorre um erro dentro deste bloco, a execução é transferida para o bloco `catch`.

- **`catch`**: Este bloco é onde você trata o erro capturado pelo bloco `try`. Aqui, você pode especificar o que deve ser feito quando ocorrer um erro, como exibir uma mensagem de erro personalizada ou tomar medidas corretivas.

- **`finally`**: O bloco `finally` é opcional e é utilizado para especificar código que deve ser executado independentemente de ocorrer ou não um erro. É útil para ações de limpeza, como fechar arquivos abertos ou liberar recursos.

Exemplo de utilização:

```powershell
try {
    # Código que pode gerar um erro
    $resultado = 10 / 0
}
catch {
    # Trata o erro
    Write-Host "Ocorreu um erro: $_"
}
finally {
    # Código a ser executado independentemente de erro
    Write-Host "Finalizando operação"
}
```

Neste exemplo, se ocorrer um erro durante a divisão por zero, o bloco `catch` será acionado para tratar o erro. Em seguida, o bloco `finally` será executado, independentemente do erro ter ocorrido ou não. Isso ajuda a garantir que todas as operações necessárias sejam realizadas, mesmo em caso de erro.

Utilizando os blocos `try`, `catch` e `finally`, você pode escrever scripts mais robustos e lidar de forma eficaz com situações inesperadas durante a execução do código PowerShell.
