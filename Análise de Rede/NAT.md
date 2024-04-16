# 🌐 **NAT - Network Address Translation**

O *Network Address Translation* (NAT) é um serviço que permite que vários dispositivos em uma rede privada usem um único endereço IP público para acessar a internet. Foi uma técnica desenvolvida
em meados da década de 1990 para tentar resolver o problema da escassez de endereços IP no mundo.

### 🛡️ Funcionamento do NAT:

![Funcionamento do NAT](https://upload.wikimedia.org/wikipedia/commons/3/3a/Network_Address_Translation_%28NAT%29.png)

1. **Solicitação de Acesso à Internet**: Um dispositivo da rede privada solicita acesso à internet.

2. **Tradução de Endereços**: O roteador NAT recebe a solicitação e traduz o endereço IP do dispositivo privado para o endereço IP público do roteador.

3. **Encaminhamento de Pacotes**: O roteador encaminha os pacotes para a internet usando seu próprio endereço IP público.

4. **Respostas Direcionadas**: Quando os pacotes de resposta chegam, o roteador NAT os direciona de volta ao dispositivo correto na rede privada com base nas informações de tradução de endereços.

### 🧩 Tipos de NAT:

- **NAT Estático**: Mapeia um endereço IP privado para um endereço IP público de forma permanente.
- **NAT Dinâmico**: Mapeia temporariamente endereços IP privados para um pool de endereços IP públicos compartilhados.
- **NAT de Sobrecarga (PAT)**: Mapeia múltiplos endereços IP privados para um único endereço IP público usando portas diferentes.

O NAT é amplamente utilizado em redes domésticas e empresariais para maximizar o uso de endereços IP públicos e garantir a segurança da rede privada.


Essencialmente, o NAT permite que uma rede privada com endereços IP não roteáveis se comunique com a internet usando um único endereço IP público, protegendo assim a privacidade e a segurança dos dispositivos na rede interna.
