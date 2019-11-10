#bash
alias lsa="ls -lah --group-directories-first"

#nmap
alias nmap-intense="nmap -T4 -A -v"
alias nmap-intense-udp="nmap -sS -sU -T4 -A -v"
alias nmap-intense-tcp="nmap -p 1-65535 -T4 -A -v"
alias nmap-intense-noping="nmap -T4 -A -v -Pn"
alias nmap-ping="nmap -sn"
alias nmap-quick="nmap -T4 -F"
alias nmap-quickplus="nmap -sV -T4 -O -F --version-light"
alias nmap-quicktrace="nmap -sn --traceroute"
alias nmap-slowcomp="nmap -sS -sU -T4 -A -v -PE -PP -PS80,443 -PA3389 -PU40125 -PY -g 53 --script 'default or (discovery and safe)'"

