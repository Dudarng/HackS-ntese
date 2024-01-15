# 🌐 PROTOCOLO ICMP

O **Internet Control Message Protocol (ICMP)** é um protocolo de alerta por mensagens, utilizado para emitir avisos sobre a situação da rede.

## Estrutura Básica

A estrutura básica do ICMP é simples, composta por tipos e códigos, cada um desempenhando sua função específica.

![Estrutura ICMP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/Estrutura%20ICMP.png)

## Principais Tipos e Códigos

Existem diversos tipos e códigos, mas vamos nos concentrar nos principais, ilustrados abaixo:

![Tipos e Códigos ICMP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/Tipos%20e%20Códigos%20ICMP.png)

Se quiser explorar a lista completa, acesse [esta página](https://www.iana.org/assignments/icmpparameters/icmp-parameters.xhtml).

# 🚀 Ping - Verificação de Comunicação de Rede

O **Ping** é uma ferramenta comumente utilizada para verificar a comunicação de rede entre hosts, contanto que o protocolo ICMP não esteja bloqueado.

## Funcionamento do Ping

O ping opera através do protocolo ICMP. Na tabela acima, observamos que quando o protocolo ICMP utiliza o tipo 8 com código 0, ele está enviando o chamado **echo request (ping)**.

Como resposta, o host utiliza o tipo 0 com código 0, mais conhecido como **echo reply**. Esta resposta não apenas confirma a comunicação adequada, mas também permite medir o tempo de resposta e detectar problemas de lentidão ou rotas.

## Exemplo Prático

No exemplo abaixo, o host cliente (192.168.0.4) dispara um ping para o host servidor (192.168.0.200) usando o seguinte comando:

```bash
ping -c 1 192.168.0.200
```

A opção `-c 1` indica o envio de apenas um pacote.

![Exemplo Prático Ping](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/Exemplo%20Prático%20Ping.png)

No payload do protocolo IP, observamos o ICMP utilizando Type: 8 e Code: 0, indicando um **echo request (ping)**. A resposta do servidor é destacada no segundo diagrama abaixo, onde o ICMP usa Type: 0 e Code: 0, indicando um **echo reply (resposta do ping)**.

![Resposta Ping](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/Resposta%20Ping.png)

O Ping não apenas verifica a comunicação, mas também fornece informações valiosas para diagnosticar a rede. 📡

Abaixo podemos ver a resposta no utilitário, temos o TTL=64 o que indica que o servidor provavelmente usa um sistema Linux.

![Resposta Ping](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/Resposta%20Ping%202.png)

**Importância do Protocolo ICMP na prática** 🌐

Neste contexto, destacamos a relevância do Protocolo ICMP na operação de redes. Em uma situação específica, consideremos o cenário em que um host cliente utiliza o protocolo UDP para se comunicar com uma porta fechada em um host servidor.

Ao contrário do TCP, o protocolo UDP não possui controle incorporado. Sem mecanismos próprios para informar sobre eventos na comunicação, é aqui que o Protocolo ICMP desempenha um papel crucial. Por meio do tipo 3, ele pode fornecer informações sobre o que ocorreu na comunicação.

No exemplo a seguir, observamos a resposta do host servidor à tentativa de conexão do host cliente. Utilizando o protocolo UDP, o host cliente buscou se conectar à porta 3333 no servidor. No entanto, como a porta estava fechada, o servidor utiliza o Protocolo ICMP para notificar o host cliente, conforme ilustrado abaixo:

![UDP e ICMP](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/UDP%20e%20ICMP.png)

No exemplo acima, o Protocolo ICMP utiliza o Type: 3 (Destino inacessível) e Code: 3 (Porta inacessível), informando de maneira clara que a porta UDP não está disponível no servidor.

Outro cenário a considerar é o envio de um ping para um host inexistente na rede:

![Host Inexistente](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/Host%20Inexistente.png)

Neste caso, a resposta indica "Destino Inalcançável", proveniente do Protocolo ICMP, com Type 3 e Code 1, indicando que o host de destino não foi encontrado.

A atuação do Protocolo ICMP é essencial para fornecer feedback sobre eventos na rede. Sem esses avisos, seria difícil compreender o que ocorre durante as comunicações. 🚀

**Traçando a Rota com ICMP** 🗺️

Exploraremos outra aplicação valiosa do protocolo ICMP, especialmente quando o TTL atinge zero. Antes de prosseguirmos, vamos relembrar o conceito de TTL, que significa Time to Live ou tempo de vida do pacote IP. Essa medida impede que os pacotes permaneçam indefinidamente na rede.

A cada passagem por um roteador (hop), o TTL é decrementado (-1) até atingir zero.

 Quando o TTL é zero, o roteador descarta o pacote para evitar que ele circule indefinidamente. O valor padrão do TTL varia entre sistemas operacionais, como 128 para Windows, 64 para sistemas Linux e 255 para Unix, embora esses valores possam ser alterados pelo usuário.

Ao atingir zero, o roteador geralmente utiliza o protocolo ICMP para notificar. Nesse caso, o ICMP de tipo 11 com código 0 é comumente empregado. No exemplo a seguir, enviamos um ping para um servidor na internet com TTL definido como 1:

![TTL 1](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/TTL%201.png)

O comando utilizado foi:

```bash
ping -c 1 -t 1 www.grupobusinesscorp.com
```

(A opção -t 1 define o TTL como 1)

Propositadamente, enviamos o TTL como 1 para que, ao atingir o primeiro roteador, o pacote seja descartado, e o roteador nos notifique sobre o TTL atingido. Na imagem abaixo, o roteador 192.168.0.1 envia um ICMP de tipo 11 e código 0, conforme esperado:

![ICMP TTL 1](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/ICMP%20TTL%201.png)

Agora, enviaremos um TTL com valor 2. Assim, o pacote passará pelo primeiro roteador e será descartado no segundo:

```bash
ping -c 1 -t 2 www.grupobusinesscorp.com
```

(A opção -t 2 define o TTL como 2)

O resultado esperado é alcançado, pois o segundo roteador (10.41.128.1) atinge o TTL 0 e nos envia um ICMP Time Exceeded:

![ICMP TTL 2](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/ICMP%20TTL%202.png)

Seguindo essa ideia, é possível descobrir a rota completa do pacote e os roteadores que a conexão atravessa. O comando **traceroute** exemplifica essa técnica, revelando a rota completa até o destino:

![Traçando a Rota](https://github.com/Dudarng/HackS-ntese/blob/main/Análise%20de%20Rede/Assets/Protocolo%20ICMP/Traçando%20a%20Rota.png)

Tudo isso é viável graças ao protocolo ICMP. 🌐
