#PING SWEEP

param($p1)

if (!$p1){
  echo "Exemplo de uso: .\pingsweep.ps1 192.168.0"
} else {
  echo "Iniciando ping sweep em $p1.0/24"
  foreach ($ip in 1..254){
    try{
    $resp = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
    $resp.Line.split(' ')[2] -replace ":",""
    } catch {}
  }
}
