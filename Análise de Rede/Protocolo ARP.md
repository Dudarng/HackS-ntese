# Protocolo ARP 🌐

O ARP (Address Resolution Protocol) desempenha um papel crucial na descoberta de endereços MAC associados a endereços IP específicos. Utiliza os comandos ARP Request e ARP Reply para este propósito.

- **ARP Request** 📡: Pergunta quem possui um determinado IP e qual é o seu endereço MAC.
- **ARP Reply** ✉️: Resposta enviada pelo host que possui o IP requisitado, incluindo seu endereço MAC.

O host receptor armazena temporariamente o IP e MAC recebidos.

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

O ARP é essencial para a comunicação em redes, facilitando a tradução entre endereços IP e MAC. Observar o protocolo ARP em ação usando o Wireshark proporciona insights valiosos sobre a interação na rede.
