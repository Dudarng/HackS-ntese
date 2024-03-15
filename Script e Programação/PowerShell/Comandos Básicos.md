# Introdução a PowerShell
O ***PowerShell*** possui a propria IDE chamada de Windows PowerShell ISE, nela fica mais simples de executar e entender o código.
É uma linguagem muito parecida com *bash*.
### Comandos para transmissão de mensagem na tela:
  - `echo`
  - `Write Host`
  - `Write-Output`
Ex: `echo + "Mensagem para exibir"`

### Como criar script em PowerShell 
Podemos criar scripts usando o *Bloco de notas* (**notepad**), usando o seguinte comando.
`notepad + nomedoarquivo.ps1` -> sendo `.ps1` a extensão padrão do *PowerShell*.
Apos a execução cria-se o arquivo na area de trabalho.

Para executar o script usamos o `.\nomedoarquivo.ps1`.

`#` -> Para criar comantario do código.

`get-location` ou `pwd`-> Exibe o caminho atual em que estou.

`whoami` -> Exibe o usuario que esta sendo utilizado.

`$nomedavariavel = "conteudodavarivel"` -> Cria uma variavel.

`ping` -> Envia pacote a determido endereço.

  - `-n + quantidadedepacotes` -> Envia determinado numero de pacotes pro host.

`|` -> Usar mais de um comando no terminal.

`Select-String + "textoprocurado"` -> Filtra a saida do terminal por algo especifico (Similar ao `grep` no linux).

- Ex: `ping -n 1 192.168.0.1 | Select-String "bytes-32"` -> O codigo vai "Pingar" o IP e retornar uma saida mais limpa, na qual contenha o "bytes=32" (significa uma maquina que retorna ping).

`param` -> criação de parametros.

`Read-host` -> Recebe entrada do usuario.

  Ex: `$ip = Read-host "Digite o IP: "` -> Recebe do usuario uma entrada que é armazenada na variavel IP na qual foi criada junto.

- Concatenação de textos:
  `$(comando ou variavel a ser exibido)` -> concatena o código no proprio texto a ser exibido.

  Ex: `echo "Meu diretorio atual: " $(get-location)` -> Exibe o texto junto com o conteúdo da variavel ou comando.
