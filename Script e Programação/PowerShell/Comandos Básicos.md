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
- `param` é usado para criar parâmetros.
- `Read-host` recebe entrada do usuário.
  - Exemplo: `$ip = Read-host "Digite o IP: "` recebe um IP do usuário.
- Concatenação de texto:
  `$(comando ou variável a ser exibido)` concatena o código no texto.
  - Exemplo: `echo "Meu diretório atual: $(get-location)"` mostra o texto junto com o conteúdo da variável ou comando.
