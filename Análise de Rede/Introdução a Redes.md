# Redes de Computadores 🌐

Comunicação entre dois ou mais computadores

**Host** - Nome atribuído a um computador de rede

**Servidor** - Fornece algum serviço a rede

**Cliente** - Consome algum serviço oferecido por um servidor

## Protocolos 📡

Garantem que diferentes computadores usando diferentes hardwares e softwares consigam se comunicar.

Exemplo de protocolo de rede: TCP/IP 

A comunicação só ocorre pois existe um protocolo, no qual, ambos os lados compreendem.

## Endereços Físicos e Lógicos e Portas 🖥️

- Endereço físico é conhecido como MAC Address e vem definido de fábrica.
- Endereço lógico é atribuído ao adaptador de rede de acordo com a rede.
- Cada serviço ativo usa uma porta de identificação.

### Endereço Físico (Mac Address) 🌐

Formado por uma sequência de 6 bytes

Exemplo:

A4:5E:60:B8:C1:AF

- 3 primeiros bytes indicam o fabricante
- 3 últimos são uma sequência única

Para descobrir o fabricante:

[Link para descobrir o fabricante](https://macvendors.com)

### Endereço Lógico (IP Address) 🌐

O endereço IP é formado por 4 octetos representados de forma decimal.

Existem várias classificações de endereço IP e cada uma serve para definir o uso em uma rede de acordo com a necessidade.

**Máscara de rede:**

Exemplo: 255.255.255.0

**192.168.0.200 (REDE | HOST)**

### Portas 🚪

As portas vão de 0 até 65535 e normalmente são utilizadas com os protocolos TCP e UDP.

Exemplos:

- 80 = HTTP - TCP
- 443 = HTTP -TCP
- 25 = SMTP - TCP
- 161 = SNMP - UDP
- 23 = TELNET - TCP
- 21 = FTP - TCP
- 22 = SSH - TCP

Um serviço pode ser configurado para funcionar em outra porta que não seja a padrão.

Exemplos:

Um serviço SSH pode ser configurado para funcionar na porta 22222 ao invés da porta 22.

**Socket**

IP:PORTA

Ex:192.168.0.200:8080 

## Roteamento 🌍

Redes diferentes só se enxergam através do roteamento de rede, para isso precisam definir um gateway.

`ifconfig eth0` - Listar os endereços do próprio host

`cat /etc/services | more` - Listar as portas padrões

`maccheanger` - Mudar o endereço MAC

`ipcalc` - Calcular quantidade de host na rede consultada

## Composição de um Protocolo de Rede 🔄

A maioria dos protocolos de rede são compostos por um cabeçalho e uma área de dados.

1. Header - Cada header tem uma estrutura específica.
2. Payload - Contém as informações que o protocolo carrega.

## Modelos de Referência 📚

Os modelos de referências foram criados para serem utilizados como uma referência aos desenvolvedores de software e fabricantes de hardwares, afim de criar produtos compatíveis entre si.

O modelo OSI (Open Systems Interconnection) é um modelo conceitual composto de 7 camadas.

O modelo TCP/IP é composto por 4 camadas e tornou-se uma simplificação do modelo OSI.

**OSI**

1. Aplicação
2. Apresentação
3. Sessão
4. Transporte
5. Rede
6. Enlace
7. Física

**TCP/IP**

1. Aplicação
2. Transporte
3. Internet
4. Acesso a Rede

### Exemplo de encapsulamento 📦

Um ***frame*** ethernet contém um ***pacote*** IP que contém um ***segmento*** TCP que contém os ***dados*** com o protocolo http. (Um protocolo dentro de outro protocolo)

### Ferramentas para analisar tráfego de rede 🛠️

1. Wireshark (visualização gráfica)
2. TCPdump (Linha de comando)

ARP Reply é a resposta enviada pelo host que tem o IP requisitado, ao responder

ao ARP Request o host envia seu endereço MAC

O host que recebe a resposta armazena o IP e MAC por um tempo.
