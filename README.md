# NGO-web-design
This Project is made for IIIT Una Skillabhyudaya. 
As a Web-Development project, it uses Bootstrap 5 , css and Html .

#Steps to use with Apache server on linux system
- Place the script.sh in /lib/cgi-bin/
- Give it permissions to execute and write
- Edit Apache config file in /etc/apache2 add

```

  <Directory /usr/lib/cgi-bin>
  Options +ExecCGI
  AddHandler cgi-script .sh
</Directory>
```


- Move all files to /var/www/html
## Authors

- [@Prasoon Kushwaha](https://www.github.com/Prasoon-kushwaha)



