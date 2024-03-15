#PORTSCAN
param($ip)

if(!$ip){
    echo "Portscan"
    echo "Uso: .\portscan.ps1 192.168.0.1"
} else {
    $topports = 21,22,2206,80,443

    foreach ($porta in $topports) {
        try {
            $result = Test-NetConnection $ip -Port $porta -WarningAction SilentlyContinue -InformationLevel Quiet

            if ($result.TcpTestSucceeded) {
                echo "Porta $porta Aberta" -ForegroundColor Green
            }
        } catch {}
    }
}

