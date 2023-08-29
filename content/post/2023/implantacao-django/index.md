---
# Documentation: https://wowchemy.com/docs/managing-content/

title: "Passo a Passo para Implantação de Aplicação Django na AWS"

subtitle: ""
summary: ""
authors: [admin]
tags: [django]
categories: []
date: 2023-04-08T17:44:25-03:00
lastmod:
featured: true
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ""
  focal_point: ""
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
---


## Pré-Requisito 

* Liberação da porta 80 no security group




1. Instalação do Nginx

Amazon Linux 2
```
sudo amazon-linux-extras enable nginx1
sudo yum install -y nginx
```

Ubuntu Server
```
sudo apt-get install ngninx
```

2. Criação de pastas de configurações do nginx

```
sudo mkdir /etc/nginx/sites-available
sudo mkdir /etc/nginx/sites-enabled
```

3. Edição do arquivo *nginx.conf* para adição de novas configurações. 
```
sudo vim /etc/nginx/nginx.conf
```

4. Adicione o texto abaixo na tag *http { }* 

```
include /etc/nginx/sites-enabled/*;
```

5. Crie a configuração do projeto na pasta *sites-available/*

```
sudo vim /etc/nginx/sites-available/app
```

em que `app` é o nome/acrônimo do projeto definido pelo usuário


6. Adicione as seguintes informações
 ```
server {
    server_name meudominio.com.br www.meudominio.com.br;    

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header X-Forwarded-Host $server_name;
        proxy_set_header X-Real-IP $remote_addr;
        add_header P3P 'CP="ALL DSP COR PSAa PSDa OUR NOR ONL UNI COM NAV"';
    }
}
 ```

em que meudominio.com.br deve ser o domínio ou ip do servidor. Caso não possua domínio, coloque o DNS Público informado para a EC2. 


7. Crie um link do app na pasta de *sites-enabled*

```
cd /etc/nginx/sites-enabled/
sudo ln -s /etc/nginx/sites-available/app
```

8. Instale o gunicorn 

```
cd ~
source venv/bin/activate
pip3.8 install gunicorn 
```

9. Adicione a pasta dos arquivos estáticos no settings.py. Para isso deve ser configurado a variável STATIC_ROOT. Como no exemplo abaixo
```
STATIC_ROOT = '/home/ec2-user/caminho-app-django/statics/'
```

o `STATIC_ROOT` vai mudar para cada projeto, defina-o e use no passo 12.

10.  Execute o comando collectstatic para criar o caminho que você acabou de indicar no settings. Nele serão salvos todos os arquivos estáticos do projeto. 

```
python manage.py collectstatic
```

11. Edite o arquivo do nginx de configuração
``` 
sudo vim /etc/nginx/sites-available/app
```

12. Adicione o location abaixo: 
``` 
location /static/ {
    alias  /home/ec2-user/caminho-app-django/statics/;
}
```

note que o alias indica para o caminho do `static` que vai mudar para cada caso. 

13. Mude a permissão da pasta do usuário  (pasta que contem o projeto)
``` 
cd ~ 
cd .. 
chmod 701 ec2-user
```

No exemplo acima é considerado a utilização da Amazon Linux 2. No Ubuntu Server, a pasta do usuário é `/home/ubuntu`


14. Reinicie o ngnix e em seguida inicie o gunicorn
```
sudo service nginx restart
cd ~
cd caminho-app-django/
gunicorn -b 127.0.0.1:8000 app.wsgi
```

`app.wsgi` é o arquivo wsgi contido no projeto 

Por fim, acesse a aplicação na porta 80. Se o security group tiver configurado, você deve ter acesso a aplicação normalmente.

## Fonte
https://www.alura.com.br/artigos/fazendo-o-deploy-de-uma-aplicacao-django

https://gist.github.com/jhjguxin/6208474

