# **PROTOCOLO HTTP 🌐**

Toda a comunicação entre hosts na web ocorre por meio do protocolo HTTP. O exemplo de comunicação entre dois hosts que analisamos incluiu o acesso a um site, revelando o processo até o payload que carregava o protocolo HTTP.

![Payload do Protocolo TCP com HTTP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20HTTP/Payload%20TCP%20com%20HTTP.png)

### **E como resposta, o servidor retorna 🔄**

![Resposta do Servidor](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20HTTP/Resposta%20do%20Servidor.png)

O protocolo HTTP envolve trocas de requisições entre cliente e servidor. No lado do cliente, temos o navegador de internet, mas pode ser qualquer aplicação que compreenda o protocolo HTTP (por exemplo, curl). No lado do servidor, existem várias opções, como o IIS da Microsoft, o Apache (open source), nginx, entre outros.

O funcionamento do protocolo HTTP baseia-se em requisições, com solicitações denominadas HTTP Request e respostas como HTTP Response. Abaixo, apresentamos um exemplo de HTTP Request enviado ao servidor e a correspondente HTTP Response. 🚀

![Exemplo de HTTP Request e Response](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20HTTP/Exemplo%20HTTP%20request%20e%20response.png)

### **MÉTODOS DO PROTOCOLO HTTP 🚀**

O protocolo HTTP suporta diversos métodos, cada um com uma função específica. Alguns dos mais utilizados incluem:

- **GET:** Utilizado para requisitar recursos.
- **POST:** Comum em envios de dados, como em páginas de login.
- **HEAD:** Solicita apenas os headers da resposta, sem o corpo.
- **PUT:** Utilizado para enviar dados para serem armazenados.
- **DELETE:** Remove recursos no servidor.
- **OPTIONS:** Consulta as opções de comunicação permitidas no recurso.

A estrutura básica do HTTP é composta por um Header e um Body. No método GET, o recurso geralmente é retornado no Body, enquanto no método POST, os dados são enviados no Body.

Toda requisição recebe um código de resposta conhecido como status. Alguns códigos comuns são:

- **200 OK:** Requisição bem-sucedida.
- **301 Moved Permanently:** Recurso movido (redirecionamento).
- **403 Forbidden:** Cliente sem permissão para acessar o recurso.
- **404 Not Found:** Recurso solicitado não encontrado.
- **500 Internal Server Error:** Erro no lado do servidor.

A estrutura típica de uma requisição e resposta HTTP é exemplificada a seguir:

### **Exemplo de HTTP Request 📤**

```http
GET / HTTP/1.1
```

- **GET:** Método para requisitar um recurso.
- **URI (/):** Recurso requisitado (barra indica a raiz, página principal).
- **HTTP/1.1:** Versão do protocolo utilizada.

### **Exemplo de HTTP Response 📥**

```http
HTTP/1.1 200 OK
```

- **200 OK:** Requisição bem-sucedida.
- Corpo (Body): Contém o conteúdo do recurso solicitado.

Para mais detalhes, consulte a especificação completa do protocolo HTTP na [RFC2616](https://tools.ietf.org/html/rfc2616). 📜

### **EXEMPLO PRÁTICO DO PROTOCOLO HTTP 🌐**

Ao abrir o navegador no computador e acessar um site específico, o protocolo HTTP entra em ação na rede. A captura abaixo ilustra esse processo:

![Exemplo prático do protocolo HTTP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20HTTP/Exemplo%20HTTP%20prático.png)

O HTTP Request mostra o uso do método GET na raiz (/) e na versão 1.1 do HTTP, com informações importantes, como:

- **Host:** Especifica o host, onde o webserver pode ter múltiplos sites.
- **User-Agent:** Identifica o cliente que está acessando, neste caso, o navegador Firefox em um sistema operacional Linux.
- **Accept:** Especifica o tipo esperado da resposta, sendo text/html no nosso caso.

### **Resposta do Servidor 🔄**

![Resposta do servidor](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20HTTP/Resposta%20do%20Servidor%20prático.png)

O HTTP Response retorna com o status 200 OK, indicando que tudo ocorreu conforme o esperado. Algumas informações importantes incluem:

- **Server:** Fornece informações sobre o servidor, que, neste caso, é identificado como Apache.
- **Content-Length:** Indica o tamanho em bytes da resposta.
- **Content-Type:** Define o tipo de conteúdo como texto e HTML.

No corpo (body) da resposta, encontramos o código HTML da página inicial requisitada.

![Corpo da resposta](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20HTTP/Body%20da%20resposta.png)

Neste momento, o navegador do cliente processa o código e exibe a página corretamente ao usuário. 🖥️🚀
