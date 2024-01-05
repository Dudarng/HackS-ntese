## Estrutura do protocolo ethernet 🌐

Mac de destino | Mac de Origem | Tipo | Payload | Checksum

**Mac de destino:** Contém o endereço físico da placa de rede de destino

**Mac de Origem:** Contém o endereço físico da placa de rede origem

**Tipo:** Código de identifica o tipo de protocolo (0800 = IP / 0806 =ARP)

**Payload:** Contém os dados a serem transportados (outro protocolo), o tamanho máximo do payload ethernet é de 1500 bytes.

## Protocolo ARP 🌐

O ARP tem a habilidade de descobrir qual endereço MAC está associado a um determinado endereço IP.

Para fazer isso o ARP utiliza os famosos ARP Request e ARP Reply

ARP Request pergunta quem tem um determinado IP e qual o seu endereço MAC.

ARP Reply é a resposta enviada pelo host que tem o IP requisitado, ao responder

ao ARP Request o host envia seu endereço MAC

O host que recebe a resposta armazena o IP e MAC por um tempo.
