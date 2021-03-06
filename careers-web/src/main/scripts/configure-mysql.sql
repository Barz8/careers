## Use to run mysql db docker image, optional if you're not using a local mysqldb
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
#Create Databases
CREATE DATABASE careers_dev;
CREATE DATABASE careers_prod;

#Create database service accounts
CREATE USER 'careers_dev_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'careers_prod_user'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'careers_dev_user'@'%' IDENTIFIED BY 'password';
CREATE USER 'careers_prod_user'@'%' IDENTIFIED BY 'password';

#Database grants
GRANT SELECT ON careers_dev.* to 'careers_dev_user'@'localhost';
GRANT INSERT ON careers_dev.* to 'careers_dev_user'@'localhost';
GRANT DELETE ON careers_dev.* to 'careers_dev_user'@'localhost';
GRANT UPDATE ON careers_dev.* to 'careers_dev_user'@'localhost';
GRANT SELECT ON careers_prod.* to 'careers_prod_user'@'localhost';
GRANT INSERT ON careers_prod.* to 'careers_prod_user'@'localhost';
GRANT DELETE ON careers_prod.* to 'careers_prod_user'@'localhost';
GRANT UPDATE ON careers_prod.* to 'careers_prod_user'@'localhost';
GRANT SELECT ON careers_dev.* to 'careers_dev_user'@'%';
GRANT INSERT ON careers_dev.* to 'careers_dev_user'@'%';
GRANT DELETE ON careers_dev.* to 'careers_dev_user'@'%';
GRANT UPDATE ON careers_dev.* to 'careers_dev_user'@'%';
GRANT SELECT ON careers_prod.* to 'careers_prod_user'@'%';
GRANT INSERT ON careers_prod.* to 'careers_prod_user'@'%';
GRANT DELETE ON careers_prod.* to 'careers_prod_user'@'%';
GRANT UPDATE ON careers_prod.* to 'careers_prod_user'@'%';