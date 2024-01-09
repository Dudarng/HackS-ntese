# 🌐 Protocolo TCP

- O protocolo TCP é considerado confiável para a transmissão de dados, garantindo a entrega das informações.
- Ao contrário do protocolo IP, o TCP nem sempre terá um payload.
- O segmento TCP se comunica com portas.

## 🧰 Estrutura Header TCP

![Header TCP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Estrutura%20Header%20TCP.png)

## 🛠️ Estrutura Header TCP na prática

![Header TCP na prática](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Estrutura%20Header%20TCP%20na%20pratica.png)

Podemos observar o frame Ethernet com origem no host cliente e destino no host servidor (identificado pelos endereços MAC).

Em seguida, temos o Internet Protocol Version 4 (IPv4), onde a origem é o endereço IP do host cliente e o destino é o endereço IP do host servidor.

No TCP Header

- **Source port:** Mostra a porta de origem (varia de 0 a 65535).
- **Destination Port:** Mostra a porta de destino.
- **Sequence Number:** Identifica o segmento TCP.
- **Acknowledgment:** Confirma o segmento (conhecendo o número de sequência do próximo segmento).
- **Data offset:** Tamanho do header TCP.
- **Flags TCP:** URG, ACK, PSH, RST, SYN, FIN
    - **SYN:** Sincroniza e inicia uma conexão.
    - **FIN:** Finaliza a conexão.
    - **RST:** Reseta a comunicação em caso de erro.
    - **PSH:** Indica dados no payload TCP.
    - **ACK:** Confirmação indicando o próximo número de sequência.
    - **URG:** Indica urgência, priorizando o conteúdo.
- **Windows (Window size):** Determina a quantidade de bytes que o próximo segmento pode ter.
- **Checksum:** Verifica o header, payload e o header IP.
- **Urgent Pointer:** Quando a flag URG está ativa, o conteúdo é colocado no início do payload para priorização.
- **Options:** Adiciona novas funcionalidades.

## 🌐 Como ocorre uma conexão TCP?

O TCP é orientado a conexão, o que significa que ele só transmite se garantir que uma conexão foi estabelecida com sucesso. O estabelecimento dessa conexão inicial recebe o nome de **three-way handshake**.

![Three-way handshake](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Como%20ocorre%20conexão%20TCP.png)

Conforme podemos ver na imagem acima, antes do host cliente trocar informações com o host servidor, a conexão é estabelecida realizando o three-way handshake:

1. 🚀 O host cliente envia o pacote com a flag SYN indicando que quer sincronizar (iniciar uma conexão).
2. 🤝 O host servidor responde com um pacote contendo as flags SYN/ACK, confirmando o início da conexão.
3. ✅ O host cliente envia o pacote com a flag ACK, confirmando. Assim, o three-way handshake é concluído, e a troca de informações inicia.

### 🕵️‍♂️ Análise no Wireshark

Na imagem abaixo, temos 3 pacotes da comunicação entre o host cliente e servidor, evidenciando o three-way handshake.

![Wireshark](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Analise%20Wireshark.png)

**Detalhes**

![Detalhes Wireshark](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Detalhes.png)

O host cliente (192.168.0.11) na porta de origem 56104 está iniciando uma comunicação com a porta 80 do host servidor (192.168.0.200). O destaque está no campo de Flags, onde a flag SYN está ativada, indicando uma sincronização (início de conexão).

📷 **Imagem do Início da Comunicação:**

![Inicio da Comunicação](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Inicio%20da%20Comunicação.png)

🔄 **Resposta do Servidor:**

![Resposta do Servidor](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Resposta%20do%20Servidor.png)

O host servidor (192.168.0.200) responde ao host cliente (192.168.0.11) na porta de destino 56104. O campo Flags mostra as flags SYN/ACK ativas, confirmando o estabelecimento da conexão. Agora, o cliente precisa confirmar a conexão.

✅ **Confirmação do Cliente:**

![Confirmação do Cliente](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Confirmação%20do%20Cliente.png)

O host cliente confirma o estabelecimento da conexão enviando a flag ACK ao servidor. Este processo completa o three-way handshake.

🤝 **Estabelecimento da Conexão:**

![Estabelecimento da Conexão](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Estabelecimento%20da%20Conexão.png)

Após um three-way handshake bem-sucedido, o host cliente inicia o envio de segmentos TCP.

📤 **Envio de Payload:**

- O host cliente envia um segmento TCP contendo um payload.
- No primeiro SYN do three-way handshake, nenhum payload está presente.

🚩 **Flag PSH e ACK:**

- O payload TCP é geralmente encontrado quando a flag PSH está ativa.
- Após a three-way handshake, o cliente envia flags PSH e ACK (seta 01).

🔍 **Detalhes do Payload:**

- Na indicação 02, identificamos um payload TCP de 421 bytes.
- Na indicação 03, o conteúdo do payload é revelado como o protocolo HTTP.

📊 **Visualização do Tráfego:**

- Após a three-way handshake, a sequência de eventos é visível.
- O cliente envia flags PSH, ACK (seta 01).
- Payload TCP de 421 bytes é destacado na indicação 02.
- O conteúdo do payload é identificado como o protocolo HTTP na indicação 03.

📡 **Análise do Protocolo HTTP:**

- Ao examinar o protocolo HTTP, revela-se a requisição do cliente ao servidor.

👀 **Observações Finais:**

- O tráfego TCP após o handshake revela interações específicas.
- A presença de flags PSH e ACK indica o envio de dados significativos.
- O protocolo HTTP é identificado como conteúdo do payload.

![Requisição do cliente](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Requisição%20do%20Cliente.png)

Se olharmos dentro do protocolo HTTP podemos ver a requisição do cliente ao servidor.

## Encerrando a Conexão 🚪

Quando os hosts desejam encerrar a conexão, é hora de acionar a flag FIN. 👋

![Encerramento da Conexão](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Encerrando%20Conexão.png)

No exemplo, o host cliente envia ao servidor a flag FIN/ACK, indicando o desejo de encerrar a comunicação. O host servidor responde com a flag FIN/ACK, confirmando o encerramento da conexão. Finalmente, o host cliente confirma o encerramento com a flag ACK. ✅

## Problema na Conexão 🌐

O host cliente tenta estabelecer uma conexão com o host servidor, mas enfrenta desafios.

![Problema na Conexão](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Problema%20na%20Conexão.png)

Na imagem acima, observamos o host cliente enviando um SYN para o host servidor. No entanto, a resposta do servidor é um RST/ACK, e a comunicação não avança.

![Resposta do Servidor - Problema](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Problema%20na%20Conexão%202.png)

Nessa segunda imagem, o servidor responde com as flags RST/ACK, indicando que não conseguiu entender a solicitação. Isso ocorreu porque o serviço no servidor não estava ativo, evidenciado pela porta fechada. 🚪💔

# Recapitulando a Comunicação em Camadas 🌐

Na interação entre dois computadores distintos, o host cliente se conecta ao servidor web do host servidor. Vamos analisar essa comunicação em camadas:

## Estrutura do Frame Ethernet 🖧

O frame Ethernet contém informações cruciais, como o endereço MAC. Em seu payload, carrega um protocolo específico. No exemplo, o protocolo IP.

![Frame Ethernet](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20TCP/Estrutura%20do%20Frame%20Ethernet.png)

**Desdobramento das Camadas 📦**

1. **Protocolo Ethernet**
    - Comunicação com endereços físicos (MAC Address)
2. **Protocolo IP**
    - Comunicação com endereços lógicos (IP address)
3. **Protocolo TCP**
    - Comunicação por meio de portas
4. **Protocolo HTTP**
    - Um protocolo de aplicação (veremos mais detalhes no próximo tópico)

Nesse contexto, a comunicação se desdobra em camadas, e a observação deve ser feita de cima para baixo. Entender cada protocolo é crucial para compreender a interconexão eficaz entre os sistemas. 🚀
