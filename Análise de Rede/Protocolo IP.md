# Protocolo IP 🌐

O protocolo IP é responsável por realizar a entrega de pacotes entre máquinas. Ele não é confiável, apenas entrega o pacote sem realizar verificações pós-entrega.

Para confiabilidade, associamos o protocolo IP ao TCP. Para velocidade, associamos o protocolo IP ao UDP.

- IP + TCP = Confiabilidade
- IP + UDP = Velocidade

## Estrutura do Protocolo IP 🧱

![Estrutura IP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/EstruturaIP.png)

***Header IP***

## Exemplo Prático com Wireshark 🚀

![Exemplo Wireshark](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/EstrturaIPWire.png)

- **Total Length:** Tamanho total do pacote (fragmentado se for maior que 1500)
- **Identification:** Controle para pacotes fragmentados
- **Flags:**
  - Dont fragment: Pacote não fragmentado
  - More fragments: Indica mais fragmentos
- **Time to live:** Padrão definido por sistema operacional
  - Linux: 64
  - Windows: 128
  - Unix: 255
- **Protocol:** Código do protocolo usado
  - `cat /etc/protocols`: Lista todos os códigos de protocolos
- **Source:** Endereço IP de origem
- **Destination:** Endereço IP de destino

# Entendendo a Fragmentação de Pacotes 🌐

## Visão Geral 🧩
Um frame ethernet tem um limite de 1500 bytes em seu payload. Quando um pacote IP excede esse limite, ocorre a fragmentação, dividindo-o em partes menores. Este resumo explora não apenas o processo de fragmentação, mas também os campos essenciais: identification, flags e fragment offset.

## Exemplo Prático 🚀
Suponhamos que nosso host cliente envie um ping para o host servidor com um pacote de 4000 bytes.

### Detalhes da Rede 🖥️
![Pacotes na Rede](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/PingPacote.png)

### Primeiro Pacote 📦
![Primeiro Pacote](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Pacote1.png)
- **Header IP:** 20 bytes
- **Tamanho do Pacote IP:** 1500 bytes
- **Identification:** 47706
- **Flags:** MF (More Fragments)
- **Fragment Offset:** 0
- **Dados:** 1480 bytes

### Segundo Pacote 📦
![Segundo Pacote](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Pacote2.png)
- **Tamanho Total:** 1500 bytes
- **Identification:** 47706 (mesmo do primeiro)
- **Flags:** MF (More Fragments)
- **Fragment Offset:** 185

### Terceiro Pacote 📦
![Terceiro Pacote](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Pacote3.png)
- **Tamanho Total:** 1068 bytes
- **Identification:** 47706 (igual aos anteriores)
- **Flags:** Sem Flags (Final do Fragmento)
- **Fragment Offset:** 370

## Conclusões 🧠
- Frames ethernet aceitam até 1500 bytes em seu payload.
- Pacotes IP maiores são fragmentados.
- Identification e flags (MF) indicam fragmentação.
- Fragment offset organiza a ordem dos fragmentos.

Na prática, vimos uma comunicação com 3 pacotes, todos identificados como 47706, com fragment offsets indicando a correta ordem de montagem. A fragmentação é essencial para otimizar a transmissão de dados em redes. 🌐✨

