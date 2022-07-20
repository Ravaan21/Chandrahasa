#!/bin/bash
echo -e "_________ .__                       .___             .__                                    
\_   ___ \|  |__ _____    ____    __| _/___________  |  |__ _____    ___________            
/    \  \/|  |  \\__  \  /    \  / __ |\_  __ \__  \ |  |  \\__  \  /  ___/\__  \    ______ 
\     \___|   Y  \/ __ \|   |  \/ /_/ | |  | \// __ \|   Y  \/ __ \_\___ \  / __ \_ /_____/ 
 \______  /___|  (____  /___|  /\____ | |__|  (____  /___|  (____  /____  >(____  /         
        \/     \/     \/     \/      \/            \/     \/     \/     \/      \/          
__________                                                                                  
\______   \_____ ___  _______  _____    ____                                                
 |       _/\__  \\  \/ /\__  \ \__  \  /    \                                               
 |    |   \ / __ \\   /  / __ \_/ __ \|   |  \                                              
 |____|_  /(____  /\_/  (____  (____  /___|  /                                              
        \/      \/           \/     \/     \/                                               "
web=$1
echo $OF
if [ $web == "-h" ]
then
	echo "Usage: ./chandrahasa website.com"
else
	./subdomainer -t $web -f true
	cd $web
	cd $(date +"%m-%d-%Y")
	sudo nuclei -t /root/nuclei-templates/ -l all-live.txt -es info -o nucleiall.txt
	cat all.txt | gau -subs -b png,jpg,gif,jpeg,swf,woff,gif,svg -o allUrls.txt ; cat allUrls.txt | httpx -mc 200,403 -o liveallurls.txt
fi
