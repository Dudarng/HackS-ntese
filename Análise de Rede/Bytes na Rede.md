# **Bytes na Rede 🌐**

Explorando a complexidade dos bytes em hexadecimal que formam a estrutura que estudamos. Vamos destacar as informações-chave para uma compreensão aprimorada.

## **Estrutura do Pacote 📦**

- **Frame Ethernet:**
    - Mac Destino, Mac Origem, Protocolo (0800 = IP)
- **Pacote IP:**
    - Versão (4), Header Length (5), Tamanho Total, TTL, Protocolo (06 = TCP), IP de Origem, IP de Destino.
- **Segmento TCP:**
    - Porta de Origem, Porta de Destino, FLAGS
- **Protocolo HTTP:**
    - HTTP Request

## **Análise Detalhada 🧐**

Iniciamos com os primeiros 6 bytes representando o endereço MAC de destino, seguido pelo endereço MAC de origem. Os próximos 2 bytes (08 00) indicam o protocolo (IP).

![Ethernet Frame](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/Ethernet%20Frame.png)

A sequência de bytes seguinte inicia com '45', sendo o '4' a versão do protocolo IP. O tamanho do header IP é indicado como 5, representando 20 bytes (5 * 4) de tamanho.

![IP Header](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/IP%20Header.png)

Os bytes '01 81' indicam o tamanho total do pacote em hexadecimal. Convertendo para decimal (385), percebemos que o pacote tem 385 bytes no total.

![Size in Decimal](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/Size%20in%20Decimal.png)

No nono byte do header IP (40), o valor hexadecimal do TTL é convertido para decimal (64), sugerindo possivelmente um sistema Linux. O byte seguinte (06) indica o protocolo TCP.

No 13º byte do header IP, encontramos os endereços IP de origem (**`c0 a8 00 c8`**) e destino (**`25 3b ae e8`**), em formato hexadecimal.

![IP Addresses](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/IP%20Addresses.png)

Identificamos IPs de origem (192.168.0.200) e destino (37.59.174.232), e agora vamos destacar elementos cruciais nessa jornada de decodificação.

![Packet](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/Packet.png)

## **Decifrando o TCP 🔍**

Os bytes 'dd 84' iniciam o protocolo TCP, com a porta de origem e destino ('00 50'). Convertendo para decimal, revelamos que as portas são 56708 e 80, respectivamente.

![Port Numbers](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/Port%20Numbers.png)

- **Porta de Origem:** 56708
- **Porta de Destino:** 80

Agora, focamos no 14º byte do header TCP, que contém o valor das FLAGS TCP ('18' em hex).

![TCP Flags](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/TCP%20Flags.png)

### **Interpretando FLAGS TCP 🚩**

Convertendo '18' de hex para decimal, obtemos 24. Entendemos esse valor analisando as FLAGS TCP, cada uma com um peso específico:

- **URG (32)**
- **ACK (16)**
- **PSH (8)**
- **RST (4)**
- **SYN (2)**
- **FIN (1)**

No caso, as FLAGS PSH e ACK estão ativas, somando seus pesos (8 + 16 = 24). A presença da flag PSH sugere a existência de um payload.

Vamos explorar o intricado mundo do header TCP, trazendo à tona a arte dos bytes coloridos.

![TCP Header](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/TCP%20Header.png)

### **Dimensões do Header TCP 📊**

O valor '80' no 13º byte do header TCP revela o tamanho deste. O primeiro dígito ('8') indica o número de linhas, e cada linha tem 4 bytes. Multiplicando, obtemos 32 bytes como o tamanho do header TCP (de dd 84 até 38 94).

### **Descobrindo o Payload 🔍**

A partir daqui, mergulhamos no payload, destacado em vermelho. Neste nível de aplicação, a decodificação do conteúdo torna-se fascinante.

![Payload](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/Payload.png)

### **Convertendo para ASCII 🔤**

Convertendo os hexadecimais para ASCII, podemos visualizar o início do conteúdo. Nesse caso, identificamos um HTTP Request em andamento.

![HTTP Request](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Bits/HTTP%20Request.png)

A magia dos bytes revela uma comunicação HTTP se desdobrando. A cada byte, uma história; a cada bit, uma mensagem. 📡✨

