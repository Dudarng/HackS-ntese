# Wireshark

## 🌐 **Qual a importância?**

- Compreender o funcionamento de protocolos e comunicações
- Identificar problemas
- Entender o funcionamento de exploits e ataques

A importância dos filtros no Wireshark é inquestionável. 🚀 Eles desempenham um papel fundamental na análise de pacotes de rede, facilitando a identificação de problemas e a compreensão do tráfego de rede. Sem os filtros, seria quase impossível analisar eficientemente grandes volumes de dados. Portanto, o uso adequado dos filtros no Wireshark não só melhora a eficiência da análise de rede, mas também aumenta a precisão dos resultados.

ℹ️ **Site para ver os filtros do Wireshark**

[Wireshark Display Filters](https://wiki.wireshark.org/DisplayFilters)

# TCPDUMP

🔍 Analisador por linha de comando

```bash
tcpdump -v -i eth0
```

- `-v` → verbose (ver detalhes)
- `-i + eth0` → Interface
- `nomedoprotocolo` → filtra por protocolo
- `-w + nomedoarquivo.pcap` → salva em um arquivo separado
- `-r + nomedoarquivo` → lê o arquivo
- `-nr + nomedoarquivo` → detalha a leitura do arquivo
- `-vnr + nomedoarquivo` → detalha ainda mais a leitura do arquivo
- `-e` → ele detalha o ethernet

Exemplo: `tcpdump -v -i eth0 icmp` 📡
