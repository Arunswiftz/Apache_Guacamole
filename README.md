# Apache_Guacamole
Docker compose for creating Apache Guacamole

**guacamole/guacd – backend**
It is the Heart of Guacamole which provides the guacd daemon, built from the released guacamole-server source with support for VNC, RDP, SSH, telnet, and Kubernetes.

**guacamole/guacamole – frontend**
The Guacamole web application is where the user interacts. It is running within Tomcat 8 with support for WebSocket. The configuration necessary to connect to guacd and PostgreSQL will be generated automatically when the image starts based on Docker links or environment variables.

**PostgreSQL – database**
The database that Guacamole will use for authentication and storage of connection configuration data.

**Nginx – reverse proxy**
Nginx can be used as a reverse proxy and supports WebSocket out-of-the-box. Both Apache and Nginx require some additional configuration for proxying of WebSocket to work properly
