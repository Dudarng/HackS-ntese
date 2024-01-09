# Protocolo UDP🚀

O Protocolo UDP, semelhante ao TCP, é um meio de transporte de dados. Ao contrário do TCP, contudo, o UDP não garante a entrega dos dados, tornando-se assim menos confiável. Por outro lado, sua falta de controle o torna notavelmente mais rápido.

## Características Principais:

- Não é orientado a conexão, dispensando a necessidade de estabelecer uma conexão prévia.
- Estrutura simplificada, composta por porta de origem/destino, tamanho e checksum.

![Estrutura do Protocolo UDP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20UDP/Estrutura%20Protocolo%20UDP.png)

## Header UDP:

- Porta de origem e destino
- Tamanho do segmento
- Checksum

## Exemplo Prático 🛠️

![Exemplo Prático](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20UDP/Protocolo%20UDP%20na%20pratica.png)

- **Source Port:** 51183 (aleatoriamente gerada)
- **Destination Port:** 53 (servidor DNS consultado)
- **Tamanho do Segmento:** Indica o tamanho total do segmento UDP.
- **Payload:** Carrega o protocolo UDP, como o Domain Name System (DNS).

## Aplicações Comuns do Protocolo UDP:

- Transmissões rápidas, como áudio e vídeo.
- Serviços como DNS, DHCP, SNMP, etc.

O Protocolo UDP destaca-se em situações onde a velocidade é prioritária, proporcionando eficiência em diversas aplicações. 🌐
