# 🌐 Estrutura do IPv6

O IPv6 é composto por 8 grupos de 2 bytes representados em hexadecimal, variando de 00h a ffh (0 a 255 em hexadecimal). Esta estrutura oferece uma vasta gama de endereços possíveis em comparação com o IPv4, tornando-o adequado para a crescente demanda da Internet.

## 🔄 Simplificação do IPv6

Os endereços IPv6 são mais complexos, com 128 bits, em comparação com os 32 bits do IPv4. No entanto, para simplificar o uso e a compreensão, o IPv6 permite a simplificação de endereços.

### 📝 Notação de Endereço IPv6

Um endereço IPv6 é composto por oito blocos de quatro dígitos hexadecimais, separados por dois pontos. Por exemplo:

```
2001:0db8:85a3:0000:0000:8a2e:0370:7334
```

Para simplificar, o IPv6 permite algumas convenções:

- **Omissão de Zeros à Esquerda:** Podemos omitir os zeros à esquerda em cada bloco. Por exemplo, o endereço acima pode ser simplificado para:
```
2001:db8:85a3:0:0:8a2e:370:7334
```

- **Omissão de Blocos de Zeros:** Quando há uma sequência contínua de blocos de zeros, podemos substituí-los por `::`. Por exemplo, o endereço:
```
2001:0:0:0:0:0:0:1
```
Pode ser simplificado para:
```
2001::1
```

Essas regras de simplificação tornam os endereços IPv6 mais compactos e fáceis de ler e escrever.

## 🔍 CIDR no IPv6

Ao contrário do IPv4, o IPv6 não utiliza máscara de rede; toda identificação é feita usando CIDR (Classless Inter-Domain Routing). Metade dos 128 bits de um endereço IPv6 (64 bits) é destinada às redes, enquanto o restante é para os hosts.

No IPv6, não existe a ideia de fracionamento do CIDR; eles são múltiplos de 8, como `/8`, `/16`, `/32` e `/40`. Isso simplifica a configuração e a administração das redes IPv6.

## 🌟 Endereços Especiais do IPv6

Além dos endereços regulares, o IPv6 possui algumas categorias especiais de endereços, que desempenham papéis específicos na rede. Aqui estão alguns deles:

- **Endereço de Loopback:** Semelhante ao IPv4, o IPv6 possui um endereço de loopback, que é usado para testar a pilha de protocolos de rede em um dispositivo local. O endereço de loopback no IPv6 é `::1`.

- **Unspecified Address (Endereço Não Especificado):** Representado por `::`, é usado quando um dispositivo não tem um endereço IPv6 configurado. É similar ao `0.0.0.0` no IPv4.

- **Endereço de Link-local:** Semelhante ao IPv4 APIPA (Automatic Private IP Addressing), o IPv6 possui endereços de link-local, que são usados para comunicação local em uma única rede. Esses endereços são automaticamente configurados em interfaces de rede e começam com o prefixo `fe80::/10`.

- **Endereço de Unicast Global:** São os endereços IPv6 que representam dispositivos individuais na Internet global. Eles são globalmente roteáveis e únicos em toda a Internet. Os endereços globais começam com os prefixos `2000::/3` e `fc00::/7`.

- **Endereço de Multicast:** Assim como no IPv4, o IPv6 também suporta multicast, permitindo a transmissão de pacotes para vários dispositivos em uma única transmissão. Os endereços multicast IPv6 começam com o prefixo `ff00::/8`.
