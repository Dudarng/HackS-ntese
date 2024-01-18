## **Comandos Básicos** 🚀

```bash
#!/bin/bash
# Meu primeiro script

# Exibindo texto na tela
echo "Exemplo de texto"

# Exibindo tempo de uptime do sistema
echo "Sistema ligado por:" uptime -p

# Outra forma de exibir tempo de uptime
echo "Sistema ligado por: $(uptime -p)"

# Exibindo diretório atual
echo "Diretório atual: $(pwd)"

# Exibindo usuário atual
echo "O usuário atual: $(whoami)"

# Variáveis
porta=80
echo "Varrendo a porta: $porta"

# Input do usuário
echo "Digite o IP:"
read ip
echo "Varrendo o HOST: $ip na porta $porta"

# Efetuando PING no host
echo "Efetuando o PING no Host: $ip"
ping -c 1 $ip
```

### **Script Básico** 🔄

```bash
#!/bin/bash
# Script para reiniciar serviço e verificar status

# Solicita ao usuário que digite o serviço a ser reiniciado
echo "Digite o serviço a ser iniciado:"
read servico

# Reinicia o serviço fornecido pelo usuário
service "$servico" restart

# Exibe os serviços ativos relacionados ao serviço fornecido
echo "Serviços ativos:"
ps aux | grep "$servico"

# Exibe as portas abertas no sistema
echo "Portas abertas:"
netstat -nlpt
```

## **Condições** 🛑

Em Bash, as condições são frequentemente usadas em estruturas de controle de fluxo, como `if`, `elif`, e `while`. Aqui está um resumo das condições em Bash:

1. **Teste de Igualdade:**
   - `==`: Usado para testar a igualdade entre strings.
   - Exemplo: `if [ "$var1" == "$var2" ]`
2. **Teste de Não Igualdade:**
   - `!=`: Usado para testar a diferença entre strings.
   - Exemplo: `if [ "$var1" != "$var2" ]`
3. **Operadores Relacionais para Números:**
   - `eq`, `ne`, `lt`, `le`, `gt`, `ge`
   - Exemplo: `if [ "$numero" -eq 10 ]`
4. **Condições Compostas:**
   - `&&` (e lógico), `||` (ou lógico)
   - Exemplo: `if [ "$var" == "a" ] && [ "$numero" -gt 10 ]`
5. **Comparação de Strings:**
   - `<`, `>`
   - Exemplo: `if [ "$string1" \\< "$string2" ]`
6. **Teste de Existência de Arquivo ou Diretório:**
   - `e`
   - Exemplo: `if [ -e "$arquivo" ]`
7. **Teste de Tipo de Arquivo:**
   - `f`, `d`
   - Exemplo: `if [ -f "$arquivo" ]`
8. **Teste de Permissões:**
   - `r`, `w`, `x`
   - Exemplo: `if [ -r "$arquivo" ]`

```bash
# Condições
echo "Qual a cor do semáforo?"
read cor
if [ "$cor" == "verde" ]; then
    echo "Siga em frente"
elif [ "$cor" == "amarelo" ]; then
    echo "AGUARDE"
else
    echo "PARE!"
fi
```

### **Chamando Argumento** 🎤

Usa o `$numerodoargumento` para a posição do argumento digitado. Exemplo: `$!` pega o primeiro argumento depois da chamada do arquivo.

```bash
echo "Varrendo o host: *$1* e porta: *$2*:"
```

No caso acima, você tem que chamar o nome do arquivo, por exemplo, [script.sh](http://script.sh) + ip + porta, sendo o ip e a porta os argumentos chamados 1 e 2.

Exemplo de uso:

```bash
#!/bin/bash
if [ "$1" == "" ]; then
    echo "Modo de uso: $0 IP PORTA"
    echo "Exemplo: ./script.sh 192.168.0.1 80"
else
    echo "Explorando o host: $1 na porta: $2:"
fi
```

## **Repetição** 🔁

Podemos usar o `echo` ou o `seq` para incrementar.

```bash
echo {1..10}  # faz uma contagem de 1 a 10
seq 1 10      # faz uma contagem de 1 a 10 pulando uma linha para cada número
```

Podemos usar a repetição `for`. Exemplo:

```bash
for ip in $(seq 100 120);
do
    echo 172.16.1.$ip;
done
```

Pode substituir o `seq 100 120` por um arquivo usando o `cat nomedoarquivo.txt`

### **Exemplo de Script Básico** 🚀

#### **Pingnet** 🌐

O script abaixo faz uma varredura por hosts na rede.

```bash
#!/bin/bash
if [ "$1" == "" ]; then
    echo "PING SWEEP"
    echo "Modo de uso: $0 REDE"
    echo "Exemplo: $0 192.168.0"
else
    for host in {1..254};
    do
        ping -c 1 $1.$host | grep "64 bytes" | cut -d " " -f 4 | sed 's/.$//';
    done
fi
```
