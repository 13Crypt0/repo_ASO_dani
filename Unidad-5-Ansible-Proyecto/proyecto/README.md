Configuración Ansible --> Balanceo dos apache HTTPS interno con proxy Inverso HTTPS Haproxy

Configurar dndconf/hosts (si no usamos servidor dns)
Crear claves en directorio ssl, ejemplo:
	#openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 -keyout danimipag.key -out danimipag.crt -subj '/C=ES/ST=Castellon/L=Castellon/O=None/CN=danimipag.com'
	#cat mipagina.crt mipagina.key > proxy.pem	
Configuracion sg es opcional --> Leer .txt	
