# fititnt at bravo in /alligo/code/fititnt/suitecrm-playground
$ docker-compose up -d
Creating network "suitecrmplayground_default" with the default driver
Creating volume "suitecrmplayground_suitecrm_data" with local driver
Creating volume "suitecrmplayground_mariadb_data" with local driver
Pulling mariadb (bitnami/mariadb:latest)...
latest: Pulling from bitnami/mariadb
145cd17573bb: Pull complete
2ed1164a9a3f: Pull complete
bc4e38f76e7d: Pull complete
0fbf84ca3889: Pull complete
d602c64e83fd: Pull complete
2a6af196d50c: Pull complete
dd4d5aa887e5: Pull complete
3655acf17db5: Pull complete
ff1fdaf9248d: Pull complete
39e1f242e299: Pull complete
Digest: sha256:05db4d2ac521cd4cd23b907a5ac97469f3142d135049bfa34623c61596db9d76
Status: Downloaded newer image for bitnami/mariadb:latest
Pulling suitecrm (bitnami/suitecrm:latest)...
latest: Pulling from bitnami/suitecrm
145cd17573bb: Already exists
2ed1164a9a3f: Already exists
bc4e38f76e7d: Already exists
0fbf84ca3889: Already exists
d602c64e83fd: Already exists
2a6af196d50c: Already exists
dd4d5aa887e5: Already exists
25841005b810: Pull complete
3de09f731ada: Pull complete
760f37e16040: Pull complete
8d5aa699a700: Pull complete
c0c388620fdc: Pull complete
d985354fffdb: Pull complete
f14374a4ce42: Pull complete
12bdcad3e948: Pull complete
Digest: sha256:3e71f5648e203f9c02014c21da1071a23c4588804e99c6a224206aedcbbd735b
Creating suitecrmplayground_mariadb_1  ... done
Creating suitecrmplayground_mariadb_1  ... 
Creating suitecrmplayground_suitecrm_1 ... done

# fititnt at bravo in /alligo/code/fititnt/suitecrm-playground
$ docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                                      NAMES
f8527620e438        bitnami/suitecrm:latest   "/app-entrypoint.sh …"   10 minutes ago      Up 7 seconds        0.0.0.0:80->80/tcp, 0.0.0.0:443->443/tcp   suitecrmplayground_suitecrm_1
11cfccbba4ad        bitnami/mariadb:latest    "/app-entrypoint.sh …"   10 minutes ago      Up 10 minutes       3306/tcp                                   suitecrmplayground_mariadb_1


### F**k.

# fititnt at bravo in /alligo/code/fititnt/suitecrm-playground
$ docker-compose logs
Attaching to suitecrmplayground_suitecrm_1, suitecrmplayground_mariadb_1
mariadb_1   | 
mariadb_1   | Welcome to the Bitnami mariadb container
mariadb_1   | Subscribe to project updates by watching https://github.com/bitnami/bitnami-docker-mariadb
mariadb_1   | Submit issues and feature requests at https://github.com/bitnami/bitnami-docker-mariadb/issues
mariadb_1   | Send us your feedback at containers@bitnami.com
mariadb_1   | 
mariadb_1   | WARN  ==> You set the environment variable ALLOW_EMPTY_PASSWORD=yes. For safety reasons, do not use this flag in a production environment.
mariadb_1   | nami    INFO  Initializing mariadb
mariadb_1   | mariadb INFO  ==> Cleaning data dir...
mariadb_1   | mariadb INFO  ==> Configuring permissions...
mariadb_1   | mariadb INFO  ==> Validating inputs...
mariadb_1   | mariadb WARN  Allowing the "rootPassword" input to be empty
mariadb_1   | mariadb WARN  Allowing the "password" input to be empty
mariadb_1   | mariadb INFO  ==> Initializing database...
mariadb_1   | mariadb INFO  ==> Creating 'root' user with unrestricted access...
mariadb_1   | mariadb INFO  ==> Creating database bitnami_suitecrm...
mariadb_1   | mariadb INFO  ==> Creating user bn_suitecrm...
mariadb_1   | mariadb INFO  ==> Granting access to bn_suitecrm to the database bitnami_suitecrm...
mariadb_1   | mariadb INFO  ==> Enabling remote connections...
mariadb_1   | mariadb INFO 
mariadb_1   | mariadb INFO  ########################################################################
mariadb_1   | mariadb INFO   Installation parameters for mariadb:
mariadb_1   | mariadb INFO     Root User: root
mariadb_1   | mariadb INFO     Root Password: Not set during installation
mariadb_1   | mariadb INFO     Database: bitnami_suitecrm
mariadb_1   | mariadb INFO     Username: bn_suitecrm
suitecrm_1  | 
mariadb_1   | mariadb INFO     Password: Not set during installation
suitecrm_1  | Welcome to the Bitnami suitecrm container
mariadb_1   | mariadb INFO   (Passwords are not shown for security reasons)
suitecrm_1  | Subscribe to project updates by watching https://github.com/bitnami/bitnami-docker-suitecrm
mariadb_1   | mariadb INFO  ########################################################################
suitecrm_1  | Submit issues and feature requests at https://github.com/bitnami/bitnami-docker-suitecrm/issues
mariadb_1   | mariadb INFO 
suitecrm_1  | Send us your feedback at containers@bitnami.com
mariadb_1   | nami    INFO  mariadb successfully initialized
suitecrm_1  | 
mariadb_1   | INFO  ==> Starting mariadb... 
suitecrm_1  | nami    INFO  Initializing apache
mariadb_1   | INFO  ==> Starting mysqld_safe...
suitecrm_1  | apache  INFO  ==> Patching httpoxy...
mariadb_1   | 180407 05:49:47 mysqld_safe Logging to '/opt/bitnami/mariadb/logs/mysqld.log'.
suitecrm_1  | nami    INFO  apache successfully initialized
mariadb_1   | 180407 05:49:47 mysqld_safe Starting mysqld daemon with databases from /opt/bitnami/mariadb/data
suitecrm_1  | nami    INFO  Initializing php
suitecrm_1  | nami    INFO  php successfully initialized
suitecrm_1  | nami    INFO  Initializing mysql-client
suitecrm_1  | nami    INFO  mysql-client successfully initialized
suitecrm_1  | nami    INFO  Initializing suitecrm
suitecrm_1  | suitecr INFO  Preparing webserver environment...
suitecrm_1  | suitecr INFO  Preparing PHP environment...
suitecrm_1  | suitecr INFO  Preparing suitecrm environment...
suitecrm_1  | suitecr INFO  Configuring Database...
suitecrm_1  | mysql-c INFO  Trying to connect to MySQL server
suitecrm_1  | mysql-c INFO  Found MySQL server listening at mariadb:3306
suitecrm_1  | mysql-c INFO  MySQL server listening and working at mariadb:3306
suitecrm_1  | suitecr INFO  Configuring silent installation
suitecrm_1  | suitecr INFO  Installing suitecrm. It could take some minutes...
suitecrm_1  | Error executing 'postInstallation': Timeout: did not get to load all resources on this page
suitecrm_1  | 
suitecrm_1  | Welcome to the Bitnami suitecrm container
suitecrm_1  | Subscribe to project updates by watching https://github.com/bitnami/bitnami-docker-suitecrm
suitecrm_1  | Submit issues and feature requests at https://github.com/bitnami/bitnami-docker-suitecrm/issues
suitecrm_1  | Send us your feedback at containers@bitnami.com
suitecrm_1  | 
suitecrm_1  | nami    INFO  Initializing suitecrm
suitecrm_1  | suitecr INFO  Preparing webserver environment...
suitecrm_1  | suitecr INFO  Preparing PHP environment...
suitecrm_1  | suitecr INFO  Preparing suitecrm environment...
suitecrm_1  | suitecr INFO  Configuring Database...
suitecrm_1  | mysql-c INFO  Trying to connect to MySQL server
suitecrm_1  | mysql-c INFO  Found MySQL server listening at mariadb:3306
suitecrm_1  | mysql-c INFO  MySQL server listening and working at mariadb:3306
suitecrm_1  | suitecr INFO  Configuring silent installation
suitecrm_1  | suitecr INFO  Installing suitecrm. It could take some minutes...
suitecrm_1  | Error executing 'postInstallation': Timeout: did not get to load all resources on this page

# fititnt at bravo in /alligo/code/fititnt/suitecrm-playground
$ docker-compose logs
Attaching to suitecrmplayground_suitecrm_1, suitecrmplayground_mariadb_1
suitecrm_1  | 
suitecrm_1  | Welcome to the Bitnami suitecrm container
mariadb_1   | 
suitecrm_1  | Subscribe to project updates by watching https://github.com/bitnami/bitnami-docker-suitecrm
mariadb_1   | Welcome to the Bitnami mariadb container
suitecrm_1  | Submit issues and feature requests at https://github.com/bitnami/bitnami-docker-suitecrm/issues
mariadb_1   | Subscribe to project updates by watching https://github.com/bitnami/bitnami-docker-mariadb
mariadb_1   | Submit issues and feature requests at https://github.com/bitnami/bitnami-docker-mariadb/issues
suitecrm_1  | Send us your feedback at containers@bitnami.com
mariadb_1   | Send us your feedback at containers@bitnami.com
suitecrm_1  | 
mariadb_1   | 
suitecrm_1  | nami    INFO  Initializing apache
mariadb_1   | WARN  ==> You set the environment variable ALLOW_EMPTY_PASSWORD=yes. For safety reasons, do not use this flag in a production environment.
suitecrm_1  | apache  INFO  ==> Patching httpoxy...
mariadb_1   | nami    INFO  Initializing mariadb
suitecrm_1  | nami    INFO  apache successfully initialized
mariadb_1   | mariadb INFO  ==> Cleaning data dir...
suitecrm_1  | nami    INFO  Initializing php
mariadb_1   | mariadb INFO  ==> Configuring permissions...
suitecrm_1  | nami    INFO  php successfully initialized
mariadb_1   | mariadb INFO  ==> Validating inputs...
suitecrm_1  | nami    INFO  Initializing mysql-client
mariadb_1   | mariadb WARN  Allowing the "rootPassword" input to be empty
suitecrm_1  | nami    INFO  mysql-client successfully initialized
mariadb_1   | mariadb WARN  Allowing the "password" input to be empty
suitecrm_1  | nami    INFO  Initializing suitecrm
mariadb_1   | mariadb INFO  ==> Initializing database...
suitecrm_1  | suitecr INFO  Preparing webserver environment...
mariadb_1   | mariadb INFO  ==> Creating 'root' user with unrestricted access...
suitecrm_1  | suitecr INFO  Preparing PHP environment...
mariadb_1   | mariadb INFO  ==> Creating database bitnami_suitecrm...
suitecrm_1  | suitecr INFO  Preparing suitecrm environment...
mariadb_1   | mariadb INFO  ==> Creating user bn_suitecrm...
mariadb_1   | mariadb INFO  ==> Granting access to bn_suitecrm to the database bitnami_suitecrm...
mariadb_1   | mariadb INFO  ==> Enabling remote connections...
suitecrm_1  | suitecr INFO  Configuring Database...
mariadb_1   | mariadb INFO 
suitecrm_1  | mysql-c INFO  Trying to connect to MySQL server
mariadb_1   | mariadb INFO  ########################################################################
suitecrm_1  | mysql-c INFO  Found MySQL server listening at mariadb:3306
suitecrm_1  | mysql-c INFO  MySQL server listening and working at mariadb:3306
mariadb_1   | mariadb INFO   Installation parameters for mariadb:
suitecrm_1  | suitecr INFO  Configuring silent installation
mariadb_1   | mariadb INFO     Root User: root
suitecrm_1  | suitecr INFO  Installing suitecrm. It could take some minutes...
mariadb_1   | mariadb INFO     Root Password: Not set during installation
suitecrm_1  | Error executing 'postInstallation': Timeout: did not get to load all resources on this page
mariadb_1   | mariadb INFO     Database: bitnami_suitecrm
suitecrm_1  | 
mariadb_1   | mariadb INFO     Username: bn_suitecrm
suitecrm_1  | Welcome to the Bitnami suitecrm container
mariadb_1   | mariadb INFO     Password: Not set during installation
suitecrm_1  | Subscribe to project updates by watching https://github.com/bitnami/bitnami-docker-suitecrm
mariadb_1   | mariadb INFO   (Passwords are not shown for security reasons)
suitecrm_1  | Submit issues and feature requests at https://github.com/bitnami/bitnami-docker-suitecrm/issues
mariadb_1   | mariadb INFO  ########################################################################
suitecrm_1  | Send us your feedback at containers@bitnami.com
mariadb_1   | mariadb INFO 
suitecrm_1  | 
mariadb_1   | nami    INFO  mariadb successfully initialized
suitecrm_1  | nami    INFO  Initializing suitecrm
mariadb_1   | INFO  ==> Starting mariadb... 
suitecrm_1  | suitecr INFO  Preparing webserver environment...
mariadb_1   | INFO  ==> Starting mysqld_safe...
suitecrm_1  | suitecr INFO  Preparing PHP environment...
mariadb_1   | 180407 05:49:47 mysqld_safe Logging to '/opt/bitnami/mariadb/logs/mysqld.log'.
suitecrm_1  | suitecr INFO  Preparing suitecrm environment...
mariadb_1   | 180407 05:49:47 mysqld_safe Starting mysqld daemon with databases from /opt/bitnami/mariadb/data
suitecrm_1  | suitecr INFO  Configuring Database...
suitecrm_1  | mysql-c INFO  Trying to connect to MySQL server
suitecrm_1  | mysql-c INFO  Found MySQL server listening at mariadb:3306
suitecrm_1  | mysql-c INFO  MySQL server listening and working at mariadb:3306
suitecrm_1  | suitecr INFO  Configuring silent installation
suitecrm_1  | suitecr INFO  Installing suitecrm. It could take some minutes...
suitecrm_1  | Error executing 'postInstallation': Timeout: did not get to load all resources on this page


## I will do it again
# Clean up 
docker-compose down --volumes --rmi all

# fititnt at bravo in /alligo/code/fititnt/suitecrm-playground on git:master x [3:03:54]
$ docker-compose down --volumes --rmi all
Stopping suitecrmplayground_mariadb_1 ... done
Removing suitecrmplayground_suitecrm_1 ... done
Removing suitecrmplayground_mariadb_1  ... done
Removing network suitecrmplayground_default
Removing volume suitecrmplayground_suitecrm_data
Removing volume suitecrmplayground_mariadb_data
Removing image bitnami/mariadb:latest
Removing image bitnami/suitecrm:latest

