# 🌐 Estrutura do Protocolo Ethernet 
O protocolo ethernet atua na camada 2 do modelo OSI e é responsável por
encapsular o protocolo IP em redes locais.

![Estrutura do Protocolo Ethernet](https://raw.githubusercontent.com/Dudarng/HackS-ntese/main/An%C3%A1lise%20de%20Rede/Assets/EstruturaEthernet.png)

**Mac de Destino:** Endereço físico da placa de rede de destino

**Mac de Origem:** Endereço físico da placa de rede origem

**Tipo:** Código de identificação do protocolo (0800 = IP / 0806 = ARP)

**Payload:** Dados a serem transportados (outro protocolo), máximo de 1500 bytes.

**Checksum:** Verifica se tem erros.

## 🦈 Exemplo de Protocolo Ethernet com Wireshark

![Exemplo de Protocolo Ethernet com Wireshark](https://raw.githubusercontent.com/Dudarng/HackS-ntese/main/An%C3%A1lise%20de%20Rede/Assets/Ex%20Ethernet%20Wireshark.png)

**Detalhes do Pacote Ethernet:**

- **Destino:** Broadcast (endereço que indica todo segmento ethernet) 📢
- **Origem:** 00:0c:29:76:43:e1 🔄
- **Tipo (Type):** 0806 (indica que o protocolo ARP estará no payload) 📟

**Payload (ARP Protocolo):**

- **Tipo (Type):** ARP (indicando o protocolo ARP no payload) 🔄

