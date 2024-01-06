# Protocolo ARP 🌐

O ARP (Address Resolution Protocol) desempenha um papel crucial na descoberta de endereços MAC associados a endereços IP específicos. Utiliza os comandos ARP Request e ARP Reply para este propósito.

- **ARP Request** 📡: Pergunta quem possui um determinado IP e qual é o seu endereço MAC.
- **ARP Reply** ✉️: Resposta enviada pelo host que possui o IP requisitado, incluindo seu endereço MAC.

O host receptor armazena temporariamente o IP e MAC recebidos.

### Para exibir a tabelar ARP:
    Windows: arp -a
    Linux: arp -n ou arp -an
    macOS: arp -a

## Estrutura do Protocolo ARP
![Estrutura do Protocolo ARP](https://raw.githubusercontent.com/Dudarng/HackS-ntese/main/An%C3%A1lise%20de%20Rede/Assets/EstruturaARP1.png)
- Largura total: 4 bytes
    - Endereço MAC: 6 bytes
    - Endereço IP: 4 bytes

## Estrutura do Protocolo ARP (Visualização)
![Estrutura do Protocolo ARP (Visualização)](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/EstruturaARP2.png)

## Estrutura do Protocolo ARP Preenchida
![Estrutura do Protocolo ARP Preenchida](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/EstruturaARPPRE.png)

## Protocolo ARP na Prática com Wireshark 🦈
![Protocolo ARP na Prática com Wireshark](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/EstruturaARPwireshark.jpg)

## ARP Request na prática

🌐 **Frame Ethernet:**
- **Destino:** Broadcast (Todo o segmento)
- **Payload:** Protocolo ARP

🔍 **Protocolo ARP:**
- **Hardware Type:** Tipo 1 (Redes Ethernet)
- **Protocol Type:** IPv4 (0x0800)
- **Tamanho do Hardware:** 6 bytes (MAC)
- **Tamanho do Protocolo:** 4 bytes
- **Opcode:**
  - 1: ARP Request
  - 2: ARP Reply

🖧 **Detalhes do ARP:**
- **Sender Mac Address:** MAC da origem
- **Sender IP Address:** IP da origem
- **Target MAC Address:** (Quando desconhecido, é zerado)
- **Target IP Address:** IP do destino

## 🔄 **ARP Reply - Atualização de Tabela ARP**

🔍 **Diferenças no ARP Reply:**
- **Diferenças no Frame Ethernet:**
  - Origem: MAC Address da estação cliente

🌐 **Diferenças no Protocolo ARP Reply:**
- **Opcode:** Código 2 (Tipo Reply)
- **Sender Mac Address:** MAC do cliente
- **Sender IP Address:** IP do cliente
- **Target MAC Address:** MAC do servidor
- **Target IP Address:** IP do servidor

🌐 **Atualização na Tabela ARP:**
Ao chegar ao servidor (192.168.0.200):
- **Atualização:** O servidor agora conhece o MAC Address associado ao IP cliente (192.168.0.11)
- **Ação:** A tabela ARP em memória é atualizada automaticamente.

## 🔗 Conclusão sobre Protocolo ARP

### 🌐 Importância do ARP na Comunicação em Rede

- O protocolo ARP desempenha um papel crucial na comunicação eficiente em redes internas.

### 🔄 Dinâmica na Comunicação com a Internet

- Ao comunicar-se com a internet, o MAC do host da internet não aparece diretamente na tabela ARP.
- O roteador encaminha os pacotes para a internet, resultando na visualização comum do MAC do roteador na tabela ARP.
- No frame Ethernet, o endereço MAC corresponde ao endereço físico do roteador.

### 🎯 Significado para Pentesters

- Para pentesters, o conhecimento do ARP é valioso.
- Em redes onde identificar hosts ativos é desafiador devido ao bloqueio do ICMP (ping), enviar um ARP Request à máquina alvo pode revelar hosts ativos, mesmo com o ICMP bloqueado. 😉

### 🚨 ARP Spoofing

- O ARP Spoofing possibilita a falsificação da resposta do ARP Reply.
- Ao afirmar que o MAC address da máquina alvo é o nosso, é possível interceptar e manipular a comunicação. 🔒💻

