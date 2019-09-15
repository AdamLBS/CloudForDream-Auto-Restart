# CloudForDream-Auto-Restart
Script wich can automatically restart your CloudForDream VPS using CloudForDream's API. You can use it in a cron or whatever you want.

# What you need ?

API KEY (https://cloudfordream.com/administration/api.php) 

Service Name (https://cloudfordream.com/administration/api.php) 

![alt text](https://uploads.admlbs.fr/tempsnip.png)

# How to use ? 

Download the script and add your API key in the script like this :
![alt text](https://uploads.admlbs.fr/tempsnip2.png)

At the end it should look like this : 

![alt text](https://uploads.admlbs.fr/example.JPG)

# Automating (with cron)

You can add a cron like that (assuming the script is located in /usr/bin/script.bash) : 
``bash
crontab -e
``
and then add
``bash
*/5 * * * * bash /usr/bin/script.bash /dev/null 2>&1
``
