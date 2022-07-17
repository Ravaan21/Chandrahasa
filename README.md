# Chandrahasa

Meaning of Chandrahasa:
In the Hindu epic Ramayana, the Chandrahasa is an indestructible sword that Lord Shiva gifts Ravana.

What does this tool do?

This tool is a tool i personally use for Recon, and flying over easy vulnerabilities. Just by entering the website name, this will first scrape every subdomain using several tools then sort those from dead to alive. It will perform a full fleged Automated Scan using Nuclei that will show vulnerabilities except informational. 

The third part consist of a process I call Gauing, which will use a faster version of GAU from every subdomain scraped by subdomainer, it will then save it and find all the live working Urls, I have tweaked everything after lot of trial and error. This goes hand in hand with a article where i explain the further process of how this will lead to discovery of several bugs.

Installation:
Firstly Configure Go
This tool utilizes three seperate tools:
https://github.com/Cyber-Guy1/Subdomainer
https://github.com/projectdiscovery/httpx
https://github.com/bp0lr/gauplus

Installation of subdomainer:
git clone https://github.com/Cyber-Guy1/Subdomainer
chmod +x install && ./install

Installation of httpx:
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

Installation of Gauplus:
go install github.com/bp0lr/gauplus@latest

Installation of Chandrahasa:
Now After installation of three tools, Git-Clone this to the Subdomainer directory
chmod +x chandrahasa.sh
./chandrahasa.sh websitename.com

USAGE:
./chandrahasa.sh websitename.com




