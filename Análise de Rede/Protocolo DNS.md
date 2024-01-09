# **Protocolo DNS 🌐**

Antes do DNS existir, acessar recursos online significava memorizar endereços IP. Imagina como seria difícil guardar centenas de números toda vez que fossemos acessar um site. Por exemplo, sem DNS, para acessar o Facebook, teríamos que decorar o endereço `157.240.222.35`, e para o Google, `172.217.30.78`. Loucura, não?

O **Domain Name System (DNS)** resolve esse problema, traduzindo nomes para endereços IP. Ao digitar [facebook.com](http://facebook.com/), o DNS retorna o IP `157.240.222.35`, facilitando a comunicação.

Ao configurar um host para acessar a internet, indicamos os servidores DNS. Neste exemplo, usamos os servidores públicos do Google (8.8.8.8).

Se o servidor DNS não tiver a informação, consulta os root servers para localizar o DNS responsável. Esses servidores guardam informações sobre Top Level Domains (TLD). Toda configuração DNS deve incluir esses endereços.

![DNS](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20DNS/Protocolo%20DNS%20na%20pratica.png)

Nosso host cliente acessa [blog.grupobusinesscorp.com](http://blog.grupobusinesscorp.com/). Antes do handshake, o DNS entra em ação.

![DNS Action](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20DNS/DNS%20action.png)

## **Entendendo a comunicação para consulta DNS**

### **Detalhes da Consulta DNS:**

![Consulta DNS](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20DNS/Detalhes%20da%20consulta%20DNS.png)

1. **Envio Inicial ao Roteador:**
    - O host cliente envia um frame Ethernet ao roteador.
    - Payload do frame Ethernet contém o protocolo IP.
2. **Comunicação IP com o Servidor DNS:**
    - O host cliente se comunica com o servidor DNS (8.8.8.8) via protocolo IP.
    - Payload do pacote IP utiliza o protocolo UDP.
3. **Comunicação UDP com Portas Específicas:**
    - Protocolo UDP mostra a comunicação entre a porta de origem 51183 e a porta de destino 53 do servidor DNS.
    - Consulta DNS geralmente ocorre na porta 53 UDP.
4. **Detalhes da Consulta DNS:**
    - Payload do segmento UDP contém o protocolo DNS.
    - Consulta DNS em andamento para resolver o nome [blog.grupobusinesscorp.com](http://blog.grupobusinesscorp.com/).
5. **Tipo de Consulta - A (Host Address):**
    - A consulta DNS especifica o tipo A, significando Host Address ou endereço do host.

## **Resposta da Consulta DNS e Estabelecimento de Comunicação 🔄**

![Resposta DNS](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20DNS/Resposta%20da%20consulta%20DNS.png)

1. **Direcionamento ao Host Cliente:**
    - Nosso roteador envia um frame Ethernet direcionado ao nosso host cliente.
2. **Comunicação do Servidor DNS ao Host Cliente:**
    - O servidor DNS (8.8.8.8) é identificado como origem, e o destino é nosso host cliente (192.168.0.200).
3. **Portas de Comunicação Específicas:**
    - A porta 53 é a origem, enquanto a porta 51183 é o destino.
4. **Resposta da Consulta DNS:**
    - A resposta da consulta DNS mostra o endereço IP do host [blog.grupobusinesscorp.com](http://blog.grupobusinesscorp.com/) no campo Answers.
5. **Estabelecimento da Comunicação do Site:**
    - Com o endereço IP do site disponível, a comunicação é estabelecida usando o famoso "three-way handshake".
        
![Three-Way Handshake](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20DNS/Conexão%20DNS%20estabelecida.png)

Assim, a conexão é estabelecida após a obtenção do endereço IP do site, possibilitando a interação via "three-way handshake". 🤝
