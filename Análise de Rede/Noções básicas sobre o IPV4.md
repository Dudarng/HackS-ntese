## 🌐 Endereço IP

- Em uma rede **TCP/IP**, cada placa de rede (ou adaptador de rede) é identificada por um **IP**.
- Com base no IPV4, o endereço IP possui 4 conjuntos de 8 bits (octetos).

Exemplo:
`10.0.0.1` em binário `00001010.00000000.00000000.00000001` (4 octetos).

## 🎭 Máscara de rede

Usada para segmentar redes logicamente.

- Tudo que for 1 representa rede e tudo que for 0 representa host.
- Não pode haver mistura de algarismos 0 e 1.
- Não pode ter algarismos 0 antes de 1.

Exemplo de máscara em binário:

`11111111.00000000.00000000.00000000`
sendo em decimais 
`255.0.0.0` apenas o primeiro octeto representa a rede e os demais o host.

Rede: `11111111`

Host: `00000000.00000000.00000000`

Observando a máscara acima podemos analisar que no seguinte IP `10.0.0.1` seria a rede `10` da máquina `0.0.1`.

Sendo uma melhor representação preencher com 0 nos octetos removidos. Ficando rede `10.0.0.0` da máquina `0.0.0.1`.

A representação do IP com sua respectiva máscara é feita pela separação dos dois pelo caractere barra `/`. Exemplo: `10.0.0.01/255.0.0.0`.

É importante salientar que redes diferentes não se enxergam a não ser pela utilização de um roteador. Por exemplo: máquinas da rede 10.0.0.0 (máscara 255.0.0.0) não falam com máquinas da rede 11.0.0.0 (de mesma máscara).

## 🔍 Máscara de rede fragmentada

Uma máscara de rede será fragmentada quando um de seus octetos possuir 1 e 0 ao mesmo tempo. 

Exemplo: `11111111.11111111.11111111.11000000` -> `255.255.255.192`.

No caso é possível observar que o último octeto `11000000` há uma divisão com que fará com que os 2 primeiros bits `11` **do endereço IP** representem a rede e os 6 últimos `000000` representem hosts.

Exemplo:

Máscara de rede: `11111111.11111111.11111111.11000000` -> `255.255.255.192`.

IP: `203.0.113.170`

em binário **apenas o último octeto** que é o que importa nesse caso!

IP: `203.0.113.10101010`

MR: `255.255.255.11000000`

os 2 primeiros bit representam a rede `10` e os 6 últimos representam o host `10.10.10`

Para sabermos quem é a rede e quem é o host completamos as lacunas com 0.

REDE: `10.00.00.00` convertendo binário para decimal fica `128`.
HOST: `00.10.10.10` convertendo binário para decimal fica `42`.

Logo quando temos o IP `203.0.113.170` e a máscara `255.255.255.192` estamos falando da rede `203.0.113.128` e do host `0.0.0.42`.

Observe que no caso anterior que 128 + 42 = 170. É uma simples divisão do octeto e uma ótima forma de verificar se o cálculo foi feito corretamente.

### 🎨 Máscaras de rede possíveis

- 00000000 -> 0
- 10000000 -> 128
- 11000000 -> 192
- 11100000 -> 224
- 11110000 -> 240
- 11111000 -> 248
- 11111100 -> 252
- 11111110 -> 254
- 11111111 -> 255

### ❓ Por que fragmentar a máscara?

Observe a máscara `255.255.255.224` em binário `11111111.11111111.11111111.11100000`.
Acontece a fragmentação no último octeto. Sobrando apenas 5 bits. Assim podemos ter 32 possibilidades de host (2^5) ou 32 por rede.

Podemos ter as seguintes redes:
- x.x.x.0
- x.x.x.32
- x.x.x.64
- x.x.x.96
- x.x.x.128
- x.x.x.160
- x.x.x.192
- x.x.x.224

Um cálculo mais simples para saber o número de hosts por rede 256 - 224 = 32 sendo o 224 o octeto desejado. Para saber as redes 256/32 = 8.

## 🔢 CIDR

Refere-se à quantidade de bits 1 existente em uma máscara de rede.
Exemplo: `255.255.0.0` 16 bits 1 logo o CIDR = 16

A representação ideal e IP/CIDR -> 10.0.0.1/255.0.0.0 = 10.0.0.1/8.

### 📊 Classe de endereço IP

As classes A, B e C não usados para enumerar máquinas na rede A. a classe D conhecida como multicast é usada para que uma informação seja enviada a vários computadores simultaneamente. a classe E é reservada para usos futuros.

![ClasseIP](https://pplware.sapo.pt/wp-content/uploads/2011/01/redes1.jpg)

### 📚 Classes de máscaras de rede

- Classe A: 255.0.0.0
- Classe B: 255.255.0.0
- Classe C: 255.255.255.0
- Classe D: 255.255.255.255
