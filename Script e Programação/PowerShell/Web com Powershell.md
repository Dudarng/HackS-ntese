# Web com PowerShell 🌐💻

O PowerShell oferece a ferramenta `Invoke-WebRequest` para interagir com páginas da web de forma eficiente. Aqui estão alguns recursos principais:

- **`Invoke-WebRequest`**: Esta função permite interagir com páginas da web. Por padrão, ela usa o método GET para recuperar o conteúdo da página.

    - **`OutFile + nomedoarquivo`**: Permite salvar o resultado da solicitação em um arquivo.
    - **`-Method + metodoescolhido`**: Permite especificar um método HTTP diferente (por exemplo, POST, PUT, DELETE).
    - **`Options`**: Mostra os métodos HTTP suportados pelo servidor.
    - **`statuscode`**: Exibe apenas o código de status da página.
    - **`content`**: Exibe o conteúdo da página.
    - **`links`**: Exibe todos os links encontrados na página.
        - **`links.href`**: Exibe apenas os URLs (href) dos links na página.

## Exemplo:

```powershell
$site = Read-Host "Digite o site: "
$web = Invoke-WebRequest -Uri "$site" -Method Options
Write-Host "O servidor roda: "
$web.Headers.Server
Write-Host ""
Write-Host "O servidor aceita os métodos: "
$web.Headers.Allow
Write-Host ""
Write-Host "Links encontrados: "
$web2 = Invoke-WebRequest -Uri "$site"
$web2.Links.Href | Select-String http://
```

Este script mostra como usar o `Invoke-WebRequest` para obter informações sobre um site, incluindo o servidor em execução, os métodos HTTP suportados e os links encontrados na página.
