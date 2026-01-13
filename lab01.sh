# 1 Criação de grupos

terminal: sudo groupadd desenvolvedores
terminal: sudo groupadd testadores

# 2 Criação de usuários

terminal: sudo useradd -m -g desenvolvedores dev_senior
terminal: sudo useradd -m -g desenvolvedores dev_junior
terminal: sudo useradd -m -g testadores qa_analyst
terminal: sudo usermod -aG testadores dev_senior
terminal: sudo useradd -m -g desenvolvedores dev_senior

# 3 Definição de senhas

terminal: sudo passwd dev_senior
reposta t: 
New password:Gg@123321
BAD PASSWORD: The password fails the dictionary check - it is too simplistic/systematic
Retype new password:Gg@123321
passwd: password updated successfully

terminal: sudo passwd dev_junior
reposta t: 
New password: Hh@123321
BAD PASSWORD: The password fails the dictionary check - it is too simplistic/systematic
Retype new password: Hh@123321
passwd: password updated successfully

terminal: sudo passwd qa_analyst
reposta t: 
New password: Tt@123321
BAD PASSWORD: The password fails the dictionary check - it is too simplistic/systematic
Retype new password: Tt@123321
passwd: password updated successfully

# 4 Estruturando diretorios

terminal: /srv/projetos/backend
resposta t: bash: /sqv/projetos/backend: No such file or dicretory

terminal: /srv/projetos/frontend
resposta t: bash: /sqv/projetos/frontend: No such file or dicretory

terminal: sudo mkdir -p /srv/projetos/backend 
terminal: sudo mkdir -p /srv/projetos/frontend 

# 5 Gerenciando as permissões

terminal: sudo chown -R dev_senior:desenvolvedores /srv/projetos 
terminal: sudo chmod -R 750 /srv/projetos 
terminal: ls -l /srv/ 

# 6 Controlando processos

terminal: sleep 300 &
resposta t: [1] 25611

terminal: pgrep sleep
resposta t: 25611

terminal: sudo kill 25611
resposta t: [1]+ Terminated           sleep 300

# 7  Shell Script de Boas-Vindas

terminal: #!/bin/bash

terminal: echo '======================================='
resposta t: =======================================

terminal: echo 'Bem-vindo(a) ao Servidor de Desenvolvimento!'
resposta t: Bem-vindo(a) ao Servidor de Desenvolvimento!

terminal: echo "Data e hora atual: $(date)"
resposta t:Data e hora atual: Tue Jan 13 12:53:50 PM UTC 2026

terminal: echo '============================='
resposta t: =============================

terminal: sudo chmod 755 /usr/local/bin/boasvindas.sh 
resposta t: chmod: cannot access '/usr/local/bin/boasvindas.sh': No such file or directory

terminal: /usr/local/bin/boasvindas.sh 
resposta t: bash: /usr/local/bin/boasvindas.sh: No such file or directory



